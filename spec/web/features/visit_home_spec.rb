require 'features_helper'

RSpec.describe 'Visit home' do
  it 'is successful' do
    visit '/'

    expect(page).to have_content('Categories')
  end
end

RSpec.describe 'Visit list of packages' do
  it 'showing list of packages' do
    visit '/packages'

    expect(page).to have_content('Packages')
  end
end
