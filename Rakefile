require "bundler/gem_tasks"

require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << 'lib/redis_utils'
  t.test_files = FileList['test/lib/redis_utils/*_test.rb']
  t.verbose = true
end

task :default => :test

