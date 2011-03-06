define :cabal_package, :package_name => nil, :action => :install, :opts => "" do
  execute "#{params[:action]}ing #{params[:package_name]}" do
    command "cabal #{params[:action]} #{params[:opts]} #{params[:package_name]}"
    user params[:user]
  end
end
