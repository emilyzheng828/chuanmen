class HomeController < ApplicationController

	before_filter :authenticate_user!, only:[:contact]

  def index
  end

  def contact
  end

  def aboutus
  end

end
