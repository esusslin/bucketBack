class UsersController < ApplicationController

	def index
    	@users= User.all

    	@users.each do |user|
    		p user
    	end
  	end

	def new 
	end

	 def show
       @user = User.find(params[:id])
     end

	def create
  		@user = User.new(user_params)
 
  		@user.save
  		redirect_to @user
	end

private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :checking, :savings, :annual, :monthly)
  end

end
