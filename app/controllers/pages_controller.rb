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
end
