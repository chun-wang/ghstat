require 'rufus/scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every("5s") do
   GhSource::timer_update
end