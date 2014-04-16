require_relative '../../test_helper'

describe RedisUtils::Base do
  it "must return an active Redis instance" do
    RedisUtils::Base.instance.wont_be_nil
    RedisUtils::Base.instance.must_be_instance_of(Redis)
  end
end