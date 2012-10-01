action :create do
  Chef::Log.info "reval::create starting"

  ruby_block "#{new_resource.name} before_deploy" do
    block do
      recipe_eval(&new_resource.code)
    end
  end

  new_resource.updated_by_last_action(true)

  Chef::Log.info "reval::create done"
end
