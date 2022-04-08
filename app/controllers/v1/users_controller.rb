class V1::UsersController < ApplicationController
  def index
    @users = User.all

    render json: { users: @users }, status: :ok
  rescue StandardError => e
    Rails.logger.error(e)
    render_internal_server_error(e)
  end
end
