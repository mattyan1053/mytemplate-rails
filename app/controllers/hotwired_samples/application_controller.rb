class HotwiredSamples::ApplicationController < ApplicationController
  private

  def set_home_path
    @home_path = hotwired_samples_root_path
  end

  def set_sidebar_items
    @sidebar_items = [
      { name: "ライブ投票", url: hotwired_samples_options_path }
    ]
  end
end
