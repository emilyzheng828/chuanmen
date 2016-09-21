class HomeController < ApplicationController

	before_filter :authenticate_user!, only:[:contact]

  def index
  	@available_times = AvailableTime.all
  end

  def contact
  end

  def aboutus
  end

  def templates
  end
end
