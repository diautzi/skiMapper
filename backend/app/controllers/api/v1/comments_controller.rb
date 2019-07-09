class Api::V1::CommentsController < ApplicationController

  before_action :find_comment, only: [:show, :update, :destroy]

  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    render json: @comment
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    end
  end

  def destroy
    @comment.destroy
    render json: @comment
  end


  private

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:user_id, :trail_id, :content)
  end
end
