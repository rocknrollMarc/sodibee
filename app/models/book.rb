class Book
  include Mongoid::Document

  field :title, type: String
  field :price, type: Float
  field :page_count, type: Integer
  field :published_date, type: Date
  field :is_best_seller, type: Boolean, default: false
  field :t, as: :title, type: String

  field :awards, type: Array
  field :reviews, type: Hash

  field :currency, localize: true

  has_one :book_detail, primary_key: :isbn
  has_one :book_detail, foreign_key: :book_detail_info, validate: false
  has_many :publications, class_name: 'Book'
  has_and_belongs_to_many :categories
  belongs_to :author, counter_cache: :books_count, index: true
end
