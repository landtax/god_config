require 'net/http'

RAILS_ROOT = "/var/rails/biocatalogue/current"
EXEC = "/home/sbel/.rvm/bin/ruby-1.8.7-p357@biocatalogue"

God.watch do |w|

	w.name = "biocatalogue_worker"
	w.uid = "sbel"
	w.dir = RAILS_ROOT

	w.start = "#{EXEC}  #{RAILS_ROOT}/script/worker start" 
	w.restart = "#{EXEC}  #{RAILS_ROOT}/script/worker restart" 
	w.stop = "#{EXEC}  #{RAILS_ROOT}/script/worker stop" 
	w.pid_file = "#{RAILS_ROOT}/tmp/pids/biocatalogue_worker0.pid"
	w.keepalive

end



