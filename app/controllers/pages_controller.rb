class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens] # What this code does is tell Rails that if it's going to run either kitten or kittens, it needs to run set_kitten_url first.

  def welcome
    @header = "This is the Welcome Page"
  end

  def about
    @header = "This is the About page"
  end

  def contest
    @header = "This is our contest page"
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to welcome_path
  end

  def kitten
    @header = "This is our kitten page"
    # set_kitten_url  -- included in the top
  end

  def kittens
    @header = "There are many kittens here!"
    # set_kitten_url -- included in the top
  end

  def set_kitten_url # "set_" defines a method that fetches a picture based on the size of the wildcard value stored in params
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] != "pikachu"
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to welcome_path
    end

  end
end
