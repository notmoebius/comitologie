class LandingController < ApplicationController
  layout false, only: [:index]

  def index
    @groups = Group.all
  end
end
