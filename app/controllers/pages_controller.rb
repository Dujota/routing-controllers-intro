class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens] # this is the same as saying include the set_kitten_url in the methods named under only when run

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
end
