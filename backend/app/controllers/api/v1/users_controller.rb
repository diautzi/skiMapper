class Api::V1::UsersController < ApplicationController
  # before_action :find_user, only: [:show, :update, :delete]

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      image: params[:image],
      location: params[:location],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if @user.save
      token = encode_token(@user.id)
      render json: {user: UserSerializer.new(@user), token: token}
    else
      render json: {errors: @user.errors.full_messages}
    end
  end

  def index
    @users = User.all
    render json: @users
  end


  def show
    @user = User.find(params[:id])
    if @user
      if curr_user.id == @user.id
        render json: @user
      else
        render json: {errors: "Page not found, please try again!"}
      end
    else
      render json: {errors: "This user was not found!"}
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.present?
      @user.destroy
    end
    render json: @users
  end


end
