require 'minitest/autorun'
require 'minitest/pride'
require 'coveralls'

Coveralls.wear!
require File.expand_path('../../lib/redis_utils.rb', __FILE__)
