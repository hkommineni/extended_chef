ohai_plugin 'nginx'

ohai 'reload_nginx' do
  plugin 'nginx'
  action :nothing
  subscribes :reload, 'package[nginx]'
end
