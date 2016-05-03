class Pin < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :pun_text, presence: { message: "Pun text must contain the text of the pun itself!" }
  validates :category, presence: { message: "Be sure to choose the category your pun falls under! Example: Animals" }
end
