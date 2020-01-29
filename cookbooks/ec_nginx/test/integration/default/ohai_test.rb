describe command ('ohai -d /tmp/kitchen/ohai/plugins nginx') do
  its(:stdout) { should include('nginx version: nginx/1.16.1') }
end
