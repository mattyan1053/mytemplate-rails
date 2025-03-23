class RailsSamples::ApplicationController < ApplicationController
  private

  def set_sidebar_items
    @sidebar_items = [
      { name: "Home", url: rails_samples_root_path },
      { name: "CRUDサンプル", url: rails_samples_posts_path }
    ]
  end
end
