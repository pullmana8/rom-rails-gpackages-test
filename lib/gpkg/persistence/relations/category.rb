module Gpkg
  module Persistence
    module Relations
      class Categories < ROM::Relation[:elasticsearch]
        schema(:categories) do
          attribute :id, Types::Int
          attribute :name, Types::String
          attribute :description, Types.Text

          primary_key :id
        end

        def like(name)
          query(prefix: { name: name })
        end
      end
    end
  end
end
