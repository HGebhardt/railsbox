#
# Cookbook Name:: railsbox
# Recipe:: ruby
#
# Install and setup Ruby environment
#
# Copyright (C) 2013 zhiping Limited
# 

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
include_recipe "rbenv::rbenv_vars"

node["railsbox"]["ruby"]["versions"].each do |rb_version|

  rbenv_ruby rb_version do
    global(node["railsbox"]["ruby"]["global_version"] == rb_version)
  end
  rbenv_gem "bundler" do
    ruby_version rb_version
  end

end
