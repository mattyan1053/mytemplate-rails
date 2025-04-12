class RailsSamples::ApplicationController < ApplicationController
  private

  def set_home_path
    @home_path = rails_samples_root_path
  end

  def set_sidebar_items
    @sidebar_items = [
      { name: "CRUDサンプル", url: rails_samples_posts_path }
    ]
  end
end
