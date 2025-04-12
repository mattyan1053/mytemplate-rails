require 'rails_helper'

RSpec.describe "hotwired_samples/options/index", type: :view do
  let(:options) do
    [
      create(:option, name: "Option 1", votes: 1),
      create(:option, name: "Option 2", votes: 2)
    ]
  end
  it "renders the options" do
    assign(:options, options)
    render

    expect(rendered).to have_content("Option 1")
    expect(rendered).to have_content("1")
    expect(rendered).to have_content("Option 2")
    expect(rendered).to have_content("2")
  end
end
