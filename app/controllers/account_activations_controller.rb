class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by(email:[params[:email]])
    if user && !user.activated? && user.authenticated?(:activateion, params[:id])
      user.activate
      log_in user
      flash[:success] = "成功しました"
      redirect_to user
    else
      flash[:error] = "失敗しました"
      redirect_to root_path
      
    end
  end

end

