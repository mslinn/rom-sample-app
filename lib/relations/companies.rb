class Companies < ROM::Relation[:sql]
  # A relation's default dataset name is inferred from the class name.
  # The first parameter to `schema` overrides the default name.
  # See https://rom-rb.org/5.0/learn/sql/relations/
  schema(:companies, infer: true) do
    associations do
      has_many :posts
    end
  end
end
