class HomeController < ApplicationController
  def index
    @items = [
      { name: "Home", url: "/" },
      { name: "About", url: "/about" },
      { name: "Contact", url: "/contact" }
    ]
  end
end
