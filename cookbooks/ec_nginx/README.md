Debugging With Chef-Shell:

	[node]> chef-shell
	shell_out('nginx --version')
	command = Mixlib::ShellOut.new('nginx --version')
	command.run_command
	
Loading and Reloading Ohai:

	berks upload (to upload the cookbook to chef server)
	knife node run_list set web-node1 'recipe[ec_nginx::default],recipe[ec_nginx::ohai]'
		- is to run the recipes on nodes from workstation
	knife ssh 'name:web-node1' 'sudo chef-client'
		- to run the chef client on the node
	knife ssh 'name:web-node1' 'sudo yum remove -y nginx'
		- to remove the package from node
Ohai Hints:

	Hints are JSON files that live on nodes and provides optional information that Ohai can't easily figure out by itslef.
	sudo mkdir -p /etc/chef/ohai/hints
	echo '{"members": ["wolverine", "cyclops", "beast", "storm"]}' | sudo tee /etc/chef/ohai/hints/xmen.json
	chef-shell
	Ohai::Hints.hint?('xmen')

