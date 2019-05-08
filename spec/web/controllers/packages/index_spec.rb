RSpec.describe Web::Controllers::Packages::Index, type: :action do
  let!(:package) { repository.create(name: 'dev-lang', description: 'The dev-lang category contains various programming language implementations and related tools.') }
  let(:action) { described_class.new }
  let(:params) { Hash[] }
  let(:repository) { Gpkg::Repositories[:Package]}

  after do
    repository.clear
  end

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq 200
  end

  it "exposes all packages" do
    action.call(params)
    expect(action.exposures[:oackages]).to eq([package])
  end
end
