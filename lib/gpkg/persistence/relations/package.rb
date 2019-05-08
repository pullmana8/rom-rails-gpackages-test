module Gpkg
  module Persistence
    module Relations
      class Packages < ROM::Relation[:elasticsearch]
        schema(:packages) do
          attribute :id, Types::Int
          attribute :name, Types::String
          attribute :description, Types.Text
          attribute :fulldescription, Types.Text

          primary_key :id
        end

        def like(name)
          query(prefix: { name: name })
        end
      end
    end
  end
end
