class Category
  include Mongoid::Document

  has_and_belongs_to_many :books
end
