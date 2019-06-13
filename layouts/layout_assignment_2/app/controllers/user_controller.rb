class UserController < ApplicationController
  def index
    @users = User.all
    render layout: 'two-column'
  end
end
