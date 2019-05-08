module Web
  module Controllers
    module Categories
      class Home
        include Web::Action

        expose :categories

        def call(params)
          @categories = Gpkg::Repositories[:Category].all
        end
      end
    end
  end
end
