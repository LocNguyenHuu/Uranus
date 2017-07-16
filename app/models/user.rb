class User < ApplicationRecord
  has_merit
  devise :database_authenticatable, :registerable, :confirmable, :recovertable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments
  has_many :events

  validates_presence_of :name

  self.per_page = 10

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

end
