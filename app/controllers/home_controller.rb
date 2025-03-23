class HomeController < ApplicationController
  def index
    @items = [
      { name: "Home", url: "/" }
    ]
  end
end
