class UsersController < ApplicationController

  def index
    users = User.all
    # call in the new method (word_count) created in the user model
    render json: @users.as_json(methods: [:count], :except => [:message, :msg_id, :user_id, :word_count, :id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
  
    if @user.save
      redirect_to users_path
    else
      flash[:alert] = "ID already exists"
      render 'new'
    end
  end
  
  private
    def allowed_params
      params.require(:user).permit(:msg_id, :message)
    end

end
