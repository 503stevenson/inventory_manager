class CompaniesController < ApplicationController
  # before_action :authenticate_user!, except: [:index, :posted_chits, :liked_chits, :followers, :following]

  def index
    # @company = current_user
    @companies = Company.all
    render 'companies/array'
  end

  def create
    @company = Company.create!(name: params[:name],
                               email: params[:email],
                               phone_number: params[:phone_number])
    render 'companies/show'
  end
  #
  def delete
    # @company = C
    # @company = current_user
    # @user.destroy
    #render 'users/show'
  end
  #
  # def like
  #   @user = current_user
  #   @chit = Chit.find_by(id: params[:chit_id])
  #   @user.like(@chit)
  #   render 'chits/show'
  # end
  #
  # def unlike
  #   @user = current_user
  #   @chit = Chit.find_by(id: params[:chit_id])
  #   @user.un_like(@chit)
  #   render 'chits/show'
  # end
  #
  # def follow
  #   current_user.follow(User.find_by(id: params[:followed_id]))
  #   @user = User.find_by(id: params[:followed_id])
  #   render 'users/show'
  # end
  #
  # def unfollow
  #   current_user.un_follow(User.find_by(id: params[:followed_id]))
  #   @user = User.find_by(id: params[:followed_id])
  #   render 'users/show'
  # end
  #
  # def block
  #   current_user.block(User.find_by(id: params[:blocked_id]))
  #   @user = User.find_by(id: params[:blocked_id])
  #   render 'users/show'
  # end
  #
  # def unblock
  #   current_user.un_block(User.find_by(id: params[:blocked_id]))
  #   @user = User.find_by(id: params[:blocked_id])
  #   render 'users/show'
  # end
  #
  # def posted_chits
  #   @user = current_user
  #   @chits = @user.posted_chits
  #   if @chits == true
  #     @chits = []
  #   end
  #   render 'users/chits'
  # end
  #
  # def liked_chits
  #   @user = current_user
  #   @chits = @user.liked_chits
  #   if @chits == true
  #     @chits = []
  #   end
  #   render 'users/chits'
  # end
  #
  # def followers
  #   @user = current_user
  #   @users = @user.followers
  #   if @users == true
  #     @users = []
  #   end
  #   render 'users/array'
  # end
  #
  # def following
  #   @user = current_user
  #   @users = @user.following
  #   if @users == true
  #     @users = []
  #   end
  #   render 'users/array'
  # end
  #
  # def blocked
  #   @user = current_user
  #   @users = @user.blocked
  #   if @users == true
  #     @users = []
  #   end
  #   render 'users/array'
  # end
  #
  # def update
  #   @user = current_user
  #   @user.edit_profile(params[:first_name], params[:last_name], params[:email])
  #   render 'users/profile'
  # end
  #
  # def profile
  #   @user = current_user
  #   render 'users/profile'
  # end
  #
  # def feed
  #   @user = current_user
  #   @chits = @user.get_feed
  #   if @chits == true
  #     @chits = []
  #   end
  #   render 'users/chits'
  # end
end