RAILS_ROOT = "/var/rails/servitoros_lite/current"

God.watch do |w|

	w.name = "servitoros_lite"
	w.dir = RAILS_ROOT
  w.env = { 'RAILS_RELATIVE_URL_ROOT' => '/servitoros_lite' }

	w.start = "/home/sbel/.rvm/bin/servitoros_lite_unicorn -E production -c #{RAILS_ROOT}/config/unicorn.rb"
	w.keepalive


end



