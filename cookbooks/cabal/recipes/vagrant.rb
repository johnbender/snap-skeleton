# make sure the vagrant cabal directory has the correct permissions
require_recipe "cabal"

execute "set permissions on /home/vagrant/.cabal" do
  command <<-code
chown -R vagrant /home/vagrant/.cabal
chgrp -R vagrant /home/vagrant/.cabal
code
end
