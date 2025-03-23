class StimulusSamples::ApplicationController < ApplicationController
  private

  def set_sidebar_items
    @sidebar_items = [
      { name: "Home", url: stimulus_samples_root_path }
    ]
  end
end
