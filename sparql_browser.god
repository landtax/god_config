
RAILS_ROOT = "/var/rails/sparql_browser/current"

God.watch do |w|

	w.env = { 'RAILS_RELATIVE_URL_ROOT' => "/sparql_browser",
		'RAILS_ENV' => "production" }
	w.name = "sparql_browser"
	w.dir = RAILS_ROOT
	w.start = "/home/sbel/.rvm/bin/sparql_browser_unicorn -c config/unicorn.rb -E production"
	w.keepalive

end



