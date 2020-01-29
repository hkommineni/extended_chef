Debugging With Chef-Shell
	[node]> chef-shell
	shell_out('nginx --version')
	command = Mixlib::ShellOut.new('nginx --version')
	command.run_command
	
Loading and Reloading Ohai
	berks upload (to upload the cookbook to chef server)
	knife node run_list set web-node1 'recipe[ec_nginx::default],recipe[ec_nginx::ohai]'
		- is to run the recipes on nodes from workstation
	knife ssh 'name:web-node1' 'sudo chef-client'
		- to run the chef client on the node
	knife ssh 'name:web-node1' 'sudo yum remove -y nginx'
		- to remove the package from node

