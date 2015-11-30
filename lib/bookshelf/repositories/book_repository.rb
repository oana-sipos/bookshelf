class BookRepository
  include Lotus::Repository

  def self.delete(book)
    super unless book.author =~ /Bert/i
  end
end
