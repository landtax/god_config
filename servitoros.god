RAILS_ROOT = "/var/rails/servitoros/current"

God.watch do |w|

	w.name = "servitoros"
	w.dir = RAILS_ROOT
  w.env = { 'RAILS_RELATIVE_URL_ROOT' => '/servitoros' }

	w.start = "/home/sbel/.rvm/bin/servitoros_unicorn -E production -c #{RAILS_ROOT}/config/unicorn.rb"
	w.keepalive


end



