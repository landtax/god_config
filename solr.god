require 'net/http'

RAILS_ROOT = "/var/rails/biocatalogue/current"
RAKE = "/var/rails/biocatalogue/biocatalogue_production_rake"

God.watch do |w|

	w.name = "solr"
	w.uid = "sbel"
	w.dir = RAILS_ROOT

	w.start = "#{RAKE} -f #{RAILS_ROOT}/Rakefile solr:start" 
	w.stop = "#{RAKE} -f #{RAILS_ROOT}/Rakefile solr:stop" 
	w.pid_file = "#{RAILS_ROOT}/tmp/pids/production_pid"
	w.log = "#{RAILS_ROOT}/log/god_solr.log"
	w.keepalive

	w.restart_if do |start|
		start.condition(:lambda) do |c|
		c.interval  = 30.seconds
		c.lambda = lambda do
			http = Net::HTTP.new('127.0.0.1', 8982) 
			response = http.request_get('/solr')
			response.status != 200
			end
		end


	end

end



