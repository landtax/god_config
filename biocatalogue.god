
RAILS_ROOT = "/var/rails/biocatalogue/current"

God.watch do |w|

	w.name = "biocatalogue"
	w.dir = RAILS_ROOT

	w.start = "/home/sbel/.rvm/bin/biocatalogue_server -e production -p 3013" 
	w.keepalive


end



