# class CategoryRepository < Hanami::Repository
# end

require_relative 'repository'

module Gpkg
  module Repositories
    class CategoryRepository < Repository[:categories]
    end
  end
end