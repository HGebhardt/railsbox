
default["railsbox"]["ruby"]["versions"] = %w(2.1.0)
default["railsbox"]["ruby"]["global_version"] = "2.1.0"
default["railsbox"]["upstream_start_port"]["unicorn"] = 10001

default["railsbox"]["default_config"]["nginx"]["template_name"] = "nginx_vhost.conf.erb"
default["railsbox"]["default_config"]["nginx"]["template_cookbook"] = "railsbox"
default["railsbox"]["default_config"]["nginx"]["listen_port"] = "80"

default["railsbox"]["default_config"]["unicorn"]["listen_port_options"] = { :tcp_nodelay => true, :backlog => 100 }
default["railsbox"]["default_config"]["unicorn"]["worker_timeout"] = 60
default["railsbox"]["default_config"]["unicorn"]["preload_app"] = false
default["railsbox"]["default_config"]["unicorn"]["worker_processes"] = [node[:cpu][:total].to_i * 4, 8].min
default["railsbox"]["default_config"]["unicorn"]["before_fork"] = 'sleep 1'

default["railsbox"]["default_config"]["unicorn_runit"]["template_name"] = "unicorn"
default["railsbox"]["default_config"]["unicorn_runit"]["template_cookbook"] = "railsbox"
default["railsbox"]["default_config"]["unicorn_runit"]["rack_env"] = "production"

default["railsbox"]["db_root_password"] = nil

default["railsbox"]["databases"]["postgresql"] = []


default[:github_deploys][:deploy_user] = "deploy"
default[:github_deploys][:deploy_group] = "deploy"

default[:github_deploys][:deploy_uid] = 9001

default[:github_deploys][:github_api][:endpoint_path] = "/user/keys"
default[:github_deploys][:github_api][:username] = "SET_YOUR_GITHUB_USERNAME"
default[:github_deploys][:github_api][:email] = "SET_YOUR_GITHUB_USER_EMAIL"
default[:github_deploys][:github_api][:password] = "GITHUB_PASSWORD"


default["railsbox"]["apps"]["unicorn"] = []

set['nginx']['init_style'] = "init"

