class PagesController < ApplicationController

  def home

  end

  #welcome Pages
  def welcome
    @lang = params[:lang]
  end
end
