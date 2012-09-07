class UserController < ApplicationController
  # It will works with respond_with.
  # Your action should looks like any other one: A model with a method call. =D
  def index
    @users = User.get("api.example.com/users")
    respond_with(@users)
  end
end