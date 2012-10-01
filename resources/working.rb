actions :create
default_action :create

attribute :name, :kind_of => String, :name_attribute => true

def code(arg=nil, &block)
  arg ||= block
  set_or_return(:code, arg, :kind_of => [Proc])
end
