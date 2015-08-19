class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    # debugger
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "欢迎来到百助订餐系统"
      redirect_to user_url(@user)
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
