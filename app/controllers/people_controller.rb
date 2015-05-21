class PeopleController < ApplicationController
  def index
    @users_by_role = User.users_by_role
  end
end
