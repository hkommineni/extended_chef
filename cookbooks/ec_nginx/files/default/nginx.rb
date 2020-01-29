Ohai.plugin(:Nginx) do
  provides 'nginx/version'

  collect_data :default do
    nginx(Mash.new)
    nginx[:version] = shell_out('nginx -v').stderr
  end
end
