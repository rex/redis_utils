require 'redis'

module RedisUtils
  class Base
    class << self

      def instance
        @instance ||= Redis.new(:driver => :hiredis)
      end

    end
  end
end