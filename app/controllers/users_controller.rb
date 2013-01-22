class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def show
    @user=User.find(params[:id])
  end

  def create
    @user=User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      binding.pry
      redirect_to "/users/#{@user.id}"
      #handle asuccessful save
      binding.pry

    else
      #flash[:error] = "fuck error!"
      render 'new'
    end
  end
end
