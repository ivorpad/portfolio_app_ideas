class Post < ApplicationRecord

  validates :title, length: { minimum: 5 }, presence: true
  validates :content, presence: true

  has_many :comments
  belongs_to :user, optional: true

end
