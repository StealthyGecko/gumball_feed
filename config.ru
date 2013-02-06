require 'rubygems'

Sinatra::Base.set(
  :run => false,
  :env => :production
)

require 'gumball_feed.rb'
run Sinatra::Application

FileUtils.mkdir_p 'log' unless File.exists?('log')
log = File.new("log/sinatra.log", "a")
$stdout.reopen(log)
$stderr.reopen(log)
