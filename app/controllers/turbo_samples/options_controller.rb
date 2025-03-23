class TurboSamples::OptionsController < TurboSamples::ApplicationController
  def index
    @options = Option.order(:id)
  end

  def vote
    @option = Option.find(params[:id])
    @option.increment!(:votes)
    respond_to do |format|
      format.html { redirect_to turbo_samples_options_path }
      format.turbo_stream
    end
  end
end
