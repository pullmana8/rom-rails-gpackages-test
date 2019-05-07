require 'features_helper'

RSpec.describe 'List packages' do
  it 'displays each package on the page' do
    visit '/packages'

    within '#packages' do
      expect(page).to have_css('.package', count: 2)
    end
  end
end
