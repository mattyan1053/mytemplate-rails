class TailwindSamples::ApplicationController < ApplicationController
  private

  def set_home_path
    @home_path = tailwind_samples_root_path
  end

  def set_sidebar_items
    @sidebar_items = []
  end
end
