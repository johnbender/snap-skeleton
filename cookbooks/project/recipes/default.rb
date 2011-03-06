require_recipe "haskell-platform"
require_recipe "cabal::vagrant"

# user our super basic cabal resource definition to install
cabal_package do
  action :install
  package_name "snap"
  user "vagrant"
end

# copy our config over so that the cabal bin directory is in the PATH
cookbook_file "/home/vagrant/.bashrc" do
  source "bashrc"
  mode "0644"
end

cookbook_file "/home/vagrant/.bash_profile" do
  source "bash_profile"
  mode "0644"
end
