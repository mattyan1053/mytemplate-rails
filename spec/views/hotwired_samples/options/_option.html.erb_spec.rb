require 'rails_helper'

RSpec.describe "hotwired_samples/options/_option", type: :view do
  let(:option) { create(:option, name: "Option 1", votes: 1) }
  subject(:rendered) { render partial: 'hotwired_samples/options/option', locals: { option: option } }

  it "renders the option name and votes" do
    expect(rendered).to have_content("Option 1")
    expect(rendered).to have_content("1")
  end
end
