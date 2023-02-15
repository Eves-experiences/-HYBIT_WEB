class FriendshipsController < ApplicationController
  before_action :set_all_friendships, only: [:new]
  before_action :set_friendship, only: %i[show edit update destroy]
  before_action :set_users, only: [:new]

  before_action :set_mutual_friends, only: [:new]
  before_action :set_you_follow, only: :new
  before_action :set_follows_you, only: %i[new]
  before_action :set_potential_friends, only: %i[new]

  def index
    @friendships = Friendship.all
  end

  def show
    @friend = @friendship.friend
    @user = @friendship.user
  end

  def new
    @friendship = Friendship.new
  end

  def create
    @friendship = Friendship.new(friendship_params)
    @friendship.user_id = current_user.id
    @friendship.mutual = false
    if @friendship.save
      redirect_to new_friendship_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @friendship = Friendship.find_by(user_id: params[:user_id], friend_id: current_user.id)
    if @friendship.update(mutual: true)
      current_user.friendships.create(friend_id: @friendship.user_id, mutual: true)
      flash[:notice] = "Friendship accepted."
    else
      flash[:alert] = "Could not accept friendship."
    end
    redirect_to new_friendship_path
  end

  def destroy
    @friendship.destroy
    redirect_to new_friendship_path, status: :see_other
  end

  private

  def friendship_params
    params.permit(:user_id, :friend_id, :mutual)
  end

  def set_users
    @users = User.all
  end

  def set_all_friendships
    @all_friendships = Friendship.all
  end

  def set_friendship
    @friendship = Friendship.find(params[:id])
  end

  def set_mutual_friends
    @mutual_friends = User.where(id: current_user.friends && current_user.friendships.where(mutual: true).pluck(:friend_id))
  end

  def set_you_follow
    @users_you_follow = User.where(id: current_user.friends && current_user.friendships.where(mutual:false).pluck(:friend_id)).where.not(id: current_user.id)
  end

  def set_follows_you
    @user_that_follows_you = User.where(id: (@all_friendships.where(friend_id: current_user.id, mutual: false).where.not(user_id: current_user.id).pluck(:user_id)))
  end

  def set_potential_friends
    @potentials = User.where(id: (@all_friendships.where.not(user_id: (@all_friendships.where(friend_id: current_user.id).pluck(:user_id))).where.not(user_id: (current_user.friendships.where(mutual: false).pluck(:friend_id))).pluck(:user_id).uniq))
    @potential_friends = @potentials.where.not(id: current_user)
  end
end
