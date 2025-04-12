require 'rails_helper'

RSpec.describe "hotwired_samples/options/vote.turbo_stream", type: :view do
  let(:option) { create(:option, name: "Option 1", votes: 1) }

  it "renders the option" do
    assign(:option, option)
    render

    expect(rendered).to include("turbo-stream action=\"replace\" target=\"option_#{option.id}\"")
  end
end
