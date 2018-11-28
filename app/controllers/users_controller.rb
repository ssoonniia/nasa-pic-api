class UsersController < ApplicationController

  def signin

   @user = User.find_by(params[:username])
     if @user && @user.authenticate(params[:password])
       jwt = Auth.encrypt({ user_id: user.id })

       render json: { jwt: jwt }
     else
       render json: { error: 'Check your username and password' }, status: 400
     end
  end

  def create
    @user = User.new(params.permit(:username, :password))
    if @user.save
      jwt = Auth.encrypt({ user_id: user.id })
      render json: { jwt: jwt }
    else
      :bad_request
    end
  end

end
