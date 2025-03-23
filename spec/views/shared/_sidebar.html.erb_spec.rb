require 'rails_helper'

RSpec.describe 'shared/_sidebar.html.erb', type: :view do
  subject(:rendered) { render partial: 'shared/sidebar', locals: { sidebar_items: sidebar_items } }
  let(:sidebar_items) do
    [
      { name: 'Home', url: '/' },
      { name: 'About', url: '#about' }
    ]
  end

  it 'sidebarが表示されること' do
    expect(rendered).to have_selector('.h-full')
  end

  it 'itemsが正しく表示されること' do
    sidebar_items.each do |item|
      expect(rendered).to have_link(item[:name], href: item[:url])
    end
  end
end
