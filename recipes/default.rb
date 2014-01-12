#
# Cookbook Name:: git_ppa
# Recipe:: default
#
# Copyright 2014, pseudomuto
#
# All rights reserved - Do Not Redistribute
#

apt_repository "git-ppa" do
  uri "http://ppa.launchpad.net/git-core/ppa/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  key "git-ppa.gpg.key"
end

package "git" { action :upgrade }
