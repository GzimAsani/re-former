class UsersController < ApplicationController
  include UsersHelper
  before_action :set_user, only: %i[edit update show]
  def show
     
  end

  def new
   @user = User.new 
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'user was successfully created'
      redirect_to @user
    else
      render 'new'
    end  
  end

  def update 
    if @user.update(user_params)
      flash[:success] = 'user was sucessfully updated'
      redirect_to @user
    else
      render 'new'          
    end
  end

  def edit
  end

  private

  def set_user
    @user = User.find(params[:id])    
  end
end



