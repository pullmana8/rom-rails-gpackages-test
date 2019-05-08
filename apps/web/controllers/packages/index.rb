module Web
  module Controllers
    module Packages
      class Index
        include Web::Action

        expose :packages

        def call(params)
          @packages = Gpkg::Repositories[:Package].all
        end
      end
    end
  end
end
