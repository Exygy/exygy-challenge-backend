class UsersController < ApplicationController
  before_action :set_current_user, only: :edit

  def edit
    @current_user = @current_user.update(user_params)
    render json: @current_user
  end

  def options
    render json: { options: 'ok' }
  end

  def login
    p '****'
    p params.inspect
    p '****'
    users = User.where(email: email_param, password: password_param)
    if users.count > 0
      @user = users
      render json: @user
    else
      render json: { error: "Wrong credentials" }, status: :unprocessable_entity
    end
  end

  # GET /users
  # GET /users.json
  def index
    users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name)
    end

    def email_param
      params.require(:email)
    end

    def password_param
      params.require(:password)
    end
end
