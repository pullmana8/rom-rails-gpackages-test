require "features_helper"

RSpec.describe "List packages" do
  let(:repository) do
    Gpkg::Repositories[:Package]
  end

  before do
    repository.clear

    repository.create(name: "dev-lang", description: "The dev-lang category contains various programming language implementations and related tools. ")
    repository.create(name: "dev-lua", description: "The dev-lua category contains libraries, utilities or bindings written in or for the Lua programming language.")
  end

  it "displays each packages on the page" do
    visit "/packages"

    within "#packages" do
      expect(page).to have_selector(".package", count: 2), "Expected to find 2 packages"
    end
  end
end
