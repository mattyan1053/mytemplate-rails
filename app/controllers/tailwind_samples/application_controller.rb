class TailwindSamples::ApplicationController < ApplicationController
  private

  def set_sidebar_items
    @sidebar_items = [
      { name: "Home", url: tailwind_samples_root_path }
    ]
  end
end
