class PagesController < ApplicationController

  def welcome
    @header = "This is the Welcome Page"
  end

  def about
    @header = "This is the About page"
  end

  def contest
    @header = "This is our contest page"
  end

  def kitten
    @header = "This is our kitten page"
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
end
