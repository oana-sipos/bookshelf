class Book
  include Lotus::Entity
  attributes :title, :author

  def title_length
    title.split(' ').size
  end

  def to_json(*)
    # self. is more of a code smell, so Bert doesn't like it
    # self.to_h.to_json
    to_h.to_json
  end
end
