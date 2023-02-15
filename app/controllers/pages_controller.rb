class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :set_owned_habits, only: %i[dashboard user]

  def home
    if user_signed_in?
      redirect_to dashboard_path
    end
  end

  def dashboard
    @current_user = current_user
    @habits_today = @owned_habits.where(frequency_variable: "day")
    @habits_week = @owned_habits.where(frequency_variable: "week")
    @habits_month = @owned_habits.where(frequency_variable: "month")
    @habits_year = @owned_habits.where(frequency_variable: "year")
  end

  def user
    @user = User.find(params[:id])
    @current_user = current_user
    @friends = current_user.friends
    # All users ordered descending:
    @top_all = User.where.not(points: nil).order(points: :desc)
    # The rank of on leaderboard:
    @index_all = @top_all.index { |u| u.id == @user.id }
    @rank_all = @index_all + 1 if @index_all.present?
    @habits_public = @user.habits.where(habit_public: "true")
    @habits_motivation_public = @owned_habits.where(motivation_public: "true")
    @mutual_friends = User.where(id: (current_user.friends && current_user.friendships.where(mutual: true).pluck(:friend_id))) && User.where(id: (@user.friends && @user.friendships.where(mutual: true).pluck(:friend_id)))
  end

  def leaderboard
    @current_user = current_user
    @friends = current_user.friends
    # All users ordered descending, and then the top 5 of them:
    @top_all = User.where.not(points: nil).order(points: :desc)
    @top5_all = User.where.not(points: nil).order(points: :desc).first(5)
    # Adding user into array of their friends, so they can make the top 5:
    @top_friends = @friends.dup
    @top_friends.push(@current_user) unless @top_friends.include?(@current_user)
    # user's friends (including themselves) ordered descending, and then the top 5 of them
    @top_friends = @top_friends.order(points: :desc)
    @top5_friends = @top_friends.order(points: :desc).first(5)
    # The rank of user amongst all users:
    @index_all = @top_all.index { |u| u.id == @current_user.id }
    @rank_all = @index_all + 1 if @index_all.present?
    # The rank of user amongst all their friends (including themselves):
    @index_friends = @top_friends.index { |u| u.id == @current_user.id }
    @rank_friends = @index_friends + 1 if @index_friends.present?
  end

  private

  def set_owned_habits
    @owned_habits = current_user.habits
  end
end
