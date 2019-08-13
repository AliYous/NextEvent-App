class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @user = current_user
    @email = @user.email
    @fname = @user.first_name
    @lname = @user.last_name
    if @fname == nil
      @fname = "first name"
    end
    if @lname == nil
      @lname = "last name"
    end

   @user_created_events = Event.where(admin_email: @email)

  end
end
