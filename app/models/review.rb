class Review
  include Mongoid::Document
  field :comment, type: String
  field :username, type: String

  embedded_in :books
end
