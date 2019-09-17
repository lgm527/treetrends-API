class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def profile
    render json: current_user, include: [:trees]
  end

  # POST /users
  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: {user: @user, token: create_token(@user.id)}
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:username, :password_digest)
    end
end
