module RedisUtils
  class Namespace < RedisUtils::Base
    class << self

      def instance
        super
      end

      def get(namespace)
        namespace.gsub!(":*", "")
        instance.scan_each(:match => "#{namespace}:*").to_a
      end

      def flush(namespace)
        instance.scan_each(:match => namespace).to_a.each do |key|
          instance.del(key)
        end
      end

    end
  end
end