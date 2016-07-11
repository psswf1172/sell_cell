class HomeController < ApplicationController
  
  def index
  end

  def about
  	render 'about'
  end

  def contact
  	render 'contact'
  end

end

