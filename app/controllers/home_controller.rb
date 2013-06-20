class HomeController < ApplicationController
  def index
    @users = User.all
    @vehicles = Vehicle.all
  end
end
