class Address
  include Mongoid::Document

  field :street, type: String
  field :city, type: String
  field :state, type: String
  field :zipcode, type: String
  field :country, type: String

  embedded_in :author
  accepts_nested_attributes_for :address, rejected_if: ->(attrs) {
    attrs[:country].blank? }

end
