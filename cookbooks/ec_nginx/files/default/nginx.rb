Ohai.plugin(:Nginx) do
  provides 'nginx/version'

  collect_data :default do
    nginx(Mash.new)
    nginx[:version] = shell_out('nginx --version').stdout
  end
end
