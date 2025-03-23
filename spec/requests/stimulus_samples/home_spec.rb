require 'rails_helper'

RSpec.describe "StimulusSamples::Home", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/stimulus_samples/"
      expect(response).to have_http_status(:success)
    end
  end
end
