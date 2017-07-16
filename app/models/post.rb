class Post < ApplicationRecord
  include Shared::Callbacks

  belongs_to :user
  counter_culture :user
  acts_as_votable
  acts_as_commentable

  include PublicActivity::Model
  tracked only: [:create, :like], owner: proc { |_controller, model| model.user }
  
  default_scope -> { order('created_at DESC') }
  mount_uploader :attachment, AvatarUploader
end
