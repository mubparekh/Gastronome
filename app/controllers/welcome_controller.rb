# WelcomeController works with render
class WelcomeController < ApplicationController
  def index
    @disable_nav = true
  end
end
