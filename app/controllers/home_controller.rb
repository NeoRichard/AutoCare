class HomeController < ApplicationController
  def index
    @users = User.all
    @vehicles = Vehicle.all
    @messages = Message.all
  end
end
