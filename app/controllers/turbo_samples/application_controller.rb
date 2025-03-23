class TurboSamples::ApplicationController < ApplicationController
  private

  def set_sidebar_items
    @sidebar_items = [
      { name: "Home", url: turbo_samples_root_path },
      { name: "ライブ投票", url: turbo_samples_options_path }
    ]
  end
end
