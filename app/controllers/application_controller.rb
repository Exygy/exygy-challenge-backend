class ApplicationController < ActionController::API
  before_action :set_cors

  # Use callbacks to share common setup or constraints between actions.
  def set_current_user
    users = User.where(api_key: api_key_param)
    render json: {error: "Wrong credentials"}, status: 403 unless users.count > 0
    @user = users.first
  end

  private

  def api_key_param
    params.require(:api_key)
  end

  def set_cors
    # Allow all origins, insecure for a real app but makes technical challenge more straightforward
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
end
