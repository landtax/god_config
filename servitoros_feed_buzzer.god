RAILS_ROOT = "/var/rails/servitoros/feed_buzzer"
CMD = "/home/sbel/feed_buzzer_feed_buzzer_ctl"

God.watch do |w|
	w.name = "servitoros_feed_buzzer"
	w.dir = RAILS_ROOT
	w.pid_file = "#{RAILS_ROOT}/feed_buzzer.pid"
	w.log = "#{RAILS_ROOT}/god_output.log"
	w.start = "#{CMD} start -c #{RAILS_ROOT}/config.yml >> /var/log/feed_buzzer.log 2>&1"
	w.stop = "#{CMD} stop -c #{RAILS_ROOT}/config.yml"
  w.keepalive
end



