class Author
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  has_many :books, after_add: :send_email

  def send_email(book)
    puts "Send email: #{book.inspect}"
  end

  field :name, type: String
  field :last_name, type: String


  has_many :books
  embeds_one :address

  accepts_nested_attributes_for :books, :address

  validates :name, presence: true
end
