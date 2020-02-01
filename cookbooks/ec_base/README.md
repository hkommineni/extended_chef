Ohai 'client.rb' Settings

	chef generate cookbook cookbooks/ec_base
	berks install (After making changes to metadata.rb)
	chef generate attribute chef-client (Attribute to store the plugins to be disabled)
	sudo find / -path '*lib/ohai/plugins/*' (command to find the plugins to be disabled)
	berks upload (To upoload the recipe to chef server)
	knife node run_list add web-node1 ec_base --before 'recipe[ec_nginx::default]' (run the recipe against the node before the recipe ec_nginx)
	knife node show web-node1 -a languages.perl (command to execute command to show the value for the attribute)
