class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def index
    render
  end
end
