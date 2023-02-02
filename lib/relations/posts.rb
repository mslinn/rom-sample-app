class Posts < ROM::Relation[:sql]
  # A relation's default dataset name is inferred from the class name.
  # The first parameter to `schema` overrides the default name.
  # See https://rom-rb.org/5.0/learn/sql/relations/
  #
  # The second parameter enables automatic schema inference.
  # This defines normal attributes, foreign keys and the primary key.
  schema(:posts, infer: true) do
    # ROM calls SQL columns "attributes"
    attribute :stats, Types::Coercible::JSON # How is this different from Types::JSON?

    # ROM calls foreign keys "associations"
    associations do
      belongs_to :company
    end
  end

  # Restrict this relation
  # See https://rom-rb.org/5.0/learn/sql/queries/#restricting-relations
  def by_url(url)
    where(url: url).to_a
  end
end
