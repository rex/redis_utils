require_relative '../../test_helper'

describe RedisUtils::Namespace do

  it "must return keys from a namespace" do
    RedisUtils::Namespace.get("aws").wont_be_nil
    RedisUtils::Namespace.get("aws").must_be_instance_of Array
  end

end