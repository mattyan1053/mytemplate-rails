require 'rails_helper'

require 'rails_helper'

RSpec.describe "TurboSamples::Options", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get turbo_samples_options_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /vote" do
    let!(:option) { create(:option, votes: 0) }

    it "increments the vote count" do
      post vote_turbo_samples_option_path(option)
      expect(option.reload.votes).to eq(1)
    end

    it "responds with turbo_stream format" do
      post vote_turbo_samples_option_path(option)
      expect(response.media_type).to eq Mime[:html]
    end
  end
end
