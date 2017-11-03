class Post < ApplicationRecord

  validates :title, length: { minimum: 5 }, presence: true
  validates :content, presence: true

  has_many :comments
  has_one :member, dependent: :destroy
  accepts_nested_attributes_for :member, allow_destroy: true, reject_if: lambda {|attributes| attributes['kind'].blank?}
  validates_associated :member

  belongs_to :user, optional: true

end
