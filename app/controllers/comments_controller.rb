class CommentsController < ApplicationController

  def index
  end

  def create
    @comment = Comment.create(content: params[:content], author: params[:author])
    @picture = Picture.find_by(date: params[:date])
    @comment.picture = @picture

    if @comment.save
      render :json => @comment
    else
      render json: {message: @comment.errors}, status:400
    end

  end



end
