class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :check_ownership, only: [:edit, :update]
  respond_to :html, :js

  def show
    @activities = PublicActivity::Activity.where(owner: @user).order(created_at: :desc).paginate(page: params[:page], per_page: 11)
  end

  def edit
  end

  def deactivate
  end

  def friends
    @friends = @user.following_users.paginate(page: params[:page])
  end

end
