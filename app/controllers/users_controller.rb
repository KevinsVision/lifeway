class UsersController < ApplicationController

  def index
    users = User.all
    # call in the new method (count) created in the user model
    render json: users.as_json(methods: :count)
  end

end
