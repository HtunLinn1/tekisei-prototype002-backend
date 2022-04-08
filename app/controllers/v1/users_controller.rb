class V1::UsersController < ApplicationController
  def index
    @users = User.all

    render json: { users: @users }, status: :ok
  rescue StandardError => e
    Rails.logger.error(e)
    render_internal_server_error(e)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    render json: { user: @user }, status: :ok
  end
end
