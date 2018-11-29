# class UsersController < ApplicationController
#
#   def signin
#    @user = User.find_by(params[:username])
#
#      if @user && @user.authenticate(params[:password])
#        jwt = Auth.encrypt({ user_id: user.id })
#        render json: { jwt: jwt }
#      else
#        render json: { error: 'Check your username and password' }, status: 400
#      end
#   end
#
#   def create
#     @user = User.new(username: params["username"], password: params["password"])
#     if @user.save
#       # jwt = Auth.encrypt({ user_id: @user.id })
#
#       render json: @user
#
#     else
#       render json: {errors: @user.errors}, status: :unprocessable_entity
#     end
#   end
#
# end
