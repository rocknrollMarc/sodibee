class Review
  include Mongoid::Document

  embedded_in :book
end
