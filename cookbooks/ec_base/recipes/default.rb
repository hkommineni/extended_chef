include_recipe 'chef-client::config'

ohai 'reload_after_config_change' do
  action :nothing
  subscribes :reload, 'template[/etc/chef/client.rb]', :immediately
end
