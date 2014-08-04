class Author
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :name, type: String

  embeds_one :address
end
