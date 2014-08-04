class Book
  include Mongoid::Document

  field :title, type: String
  field :price, type: Float
  field :page_count, type: Integer
  field :published_date, type: Date
  field :is_best_seller, type: Boolean, default: false

  field :awards, type: Array
  field :reviews, type: Hash
end
