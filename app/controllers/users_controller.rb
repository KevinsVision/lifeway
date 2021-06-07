class UsersController < ApplicationController

  def index
    users = User.all
    # call in the new method (word_count) created in the user model
    render json: @users.as_json(methods: [:count], :except => [:message, :msg_id, :user_id, :word_count, :id])
  end

end
