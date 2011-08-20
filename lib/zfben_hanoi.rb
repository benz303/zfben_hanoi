require 'erb'
require 'webrick'
require 'rake/tasklib'

path = File.realpath(File.join(File.dirname(__FILE__), 'zfben_hanoi'))
['webrick.rb', 'browser.rb', 'browsers/firefox.rb', 'browsers/chromium.rb', 'test_case.rb', 'test_results.rb', 'test_suite_results.rb', 'javascript_test_task.rb'].each do |f|
  require File.join(path, f)
end
