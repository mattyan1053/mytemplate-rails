require 'rails_helper'

RSpec.describe 'shared/_sidebar.html.erb', type: :view do
  subject(:rendered) { render partial: 'shared/sidebar', locals: { sidebar_items: sidebar_items, home_path: home_path } }
  let(:home_path) { '/' }
  let(:sidebar_items) do
    [
      { name: 'About', url: '#about' }
    ]
  end

  before do
    assign(:home_path, home_path)
    assign(:sidebar_items, sidebar_items)
  end

  it 'sidebarが表示されること' do
    expect(rendered).to have_selector('.h-full')
  end

  it 'Homeが表示されること' do
    expect(rendered).to have_link('Home', href: home_path)
  end

  it 'itemsが正しく表示されること' do
    sidebar_items.each do |item|
      expect(rendered).to have_link(item[:name], href: item[:url])
    end
  end
end
