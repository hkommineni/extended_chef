if node['platform_family'] == 'rhel'
	package 'epel-release'
end

package 'nginx'

service 'nginx' do
	action [:start, :enable]
end
