class Author
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  has_many :books, after_add: :send_email
  has_many :self_help_books, class_name: "Books"

  def send_email(document)
    puts "Send email: #{document.inspect}"
    puts "self: #{self.inspect}"
  end

  field :name, type: String
  field :last_name, type: String
  field :books_count, type: Integer, default: 0


  has_many :books, order: {title: 1 }
  embeds_one :address
  embeds_one :permanent_address, class_name: "Address"
  embeds_one :current_address, class_name: "Address"

  has_and_belongs_to_many :followers,
                          class_name: "Author",
                          inverse_of: :following

  has_and_belongs_to_many :following,
    class_name: "Author",
    inverse_of: :followers

  accepts_nested_attributes_for :books, :address
  recursively_embeds_many 

  validates :name, presence: true
end
