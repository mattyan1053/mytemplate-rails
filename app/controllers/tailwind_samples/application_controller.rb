class TailwindSamples::ApplicationController < ApplicationController
  private

  def set_home_path
    @home_path = tailwind_samples_root_path
  end

  def set_sidebar_items
    @sidebar_items = [
      { name: "V4 Demo", url: tailwind_samples_v4_demo_path }
    ]
  end
end
