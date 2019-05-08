RSpec.describe Web::Views::Categories::Home, type: :view do
  let(:exposures) { Hash[categories: []] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/categories/home.html.erb') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #categories' do
    expect(view.category).to eq exposures.fetch(:category)
  end
end
