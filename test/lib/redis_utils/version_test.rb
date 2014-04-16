require_relative '../../test_helper'

describe RedisUtils do

  it "must be defined" do
    RedisUtils::VERSION.wont_be_nil
  end

end
