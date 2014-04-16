module RedisUtils
  class Key < Base
    class << self

      def instance
        super
      end

      def get(key)
        if exists? key
          case instance.type key
          when "string"
            instance.get key
          when "list"
            raise "Not implemented"
          when "set"
            instance.smembers key
          when "zset"
            raise "Not implemented"
          when "hash"
            puts "Redis GET: HASH requested"
            instance.hgetall(key).transform_keys { |key| key.to_sym }
          end
        else
          nil
        end
      end

      def get_as_hash(key)
        ret = {}
        ret.store key, get(key)
      end

      def exists?(key)
        instance.exists key
      end

      def member?(group_name, member_name)
        instance.sismember group_name, member_name
      end

      def member(group_name, member_name)
        return nil unless member?(group_name, member_name)
        get "#{group_name}:#{member_name}"
      end

      def members(key)
        member_keys(key).map { |member_id| member(key, member_id) }
      end

      def members_as_hash(key)
        ret = HashWithIndifferentAccess.new
        member_keys(key).map { |member_id| ret.store(member_id, member(key, member_id)) }
        ret
      end

      def member_keys(key)
        instance.smembers(key)
      end

    end
  end
end