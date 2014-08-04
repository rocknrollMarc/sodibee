class Author
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :name, type: String
  field :last_name, type: String


  has_many :books
  embeds_one :address

  accepts_nested_attributes_for :books, :address
end
