# class PackageRepository < Hanami::Repository
# end

require_relative 'repository'

module Gpkg
  module Repositories
    class PackageRepository < Repository[:packages]
    end
  end
end