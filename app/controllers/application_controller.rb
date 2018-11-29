class ApplicationController < ActionController::API
end

#
 #  def signin
 #   @user = User.find_by(username: params[:user][:username])
 #
 #   if @user && user.authenticate(params[:user][:password])
 #     jwt = Auth.encrypt({ user_id: user.id })
 #     render json: { jwt: jwt }
 #   else
 #     render json: { error: 'Check your username and password' }, status: 400
 #   end
 # end
