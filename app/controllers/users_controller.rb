class UsersController < ApplicationController

  def index
    users = User.all
    # call in the new method (word_count) created in the user model
    render json: users.as_json(methods: :word_count)
  end

end
