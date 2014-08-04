class BookDetail
  include Mongoid::Document

  belongs_to :book, primary_key: :isbn
end
