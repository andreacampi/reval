action :create do
  Chef::Log.info "reval::create starting"

  recipe_eval(&new_resource.code)

  new_resource.updated_by_last_action(true)

  Chef::Log.info "reval::create done"
end
