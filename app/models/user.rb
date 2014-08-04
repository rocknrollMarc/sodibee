class User
  include Mongoid::Document
  attr_protected :password
  field :password, type: String

end
