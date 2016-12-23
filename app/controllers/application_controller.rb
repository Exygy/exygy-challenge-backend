class ApplicationController < ActionController::API

  # Use callbacks to share common setup or constraints between actions.
  def set_current_user
    users = User.where(api_key: api_key_param)
    render json: {error: "Wrong credentials"}, status: 403 unless users.count > 0
    @user = users.first
  end
end
