Vagrant::Config.run do |config|
  config.vm.box = "base"
  config.vm.network("33.33.33.10")
  config.vm.customize do |vm|
    vm.name = "Snap"
    vm.memory_size = 768
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "project"
    chef.json.merge!({ :ghc_version => '6.12.3',
                       :haskell_platform_version => '2010.2.0.0'})
  end
end
