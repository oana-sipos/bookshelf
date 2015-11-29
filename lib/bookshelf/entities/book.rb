class Book
  include Lotus::Entity
  attributes :title, :author

  def title_length
    title.split(' ').size
  end
end
