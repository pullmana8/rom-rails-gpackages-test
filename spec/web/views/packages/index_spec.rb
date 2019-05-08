RSpec.describe Web::Views::Packages::Index, type: :view do
  let(:exposures) { Hash[packages: []] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/packages/index.html.erb') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }

  let(:package_entity) do
    Gpkg::Repositories[:Package].entity_class
  end

  it 'exposes #packages' do
    expect(view.packages).to eq (exposures.fetch(:packages))
  end

  context 'there are no packages found' do
    it 'shows a placeholder message' do
      expect(rendered).to include('<p class="placeholder">There are no packages found.</p>')
    end
  end

  context 'when there are packages found' do
    let(:package1) do
      package_entity.new(id: 1, name: 'dev-lang', description: 'The dev-lang category contains various programming language implementations and related tools.
')
    end

    let(:package2) do
      package_entity.new(id: 1, name: 'dev-lua', description: 'The dev-lua category contains libraries, utilities or bindings written in or for the Lua programming language.
')
    end

    let(:exposures) { Hash[packages: [package1, package2]] }
  end
end
