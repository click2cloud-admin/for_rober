
require 'sinatra'
require 'rufus-scheduler'


configure do
  set :server, :puma
end

s = Rufus::Scheduler.new
s.every '5s' do
  puts "#{Time.now} hello"
end


get '/' do
  "hello world"
end

