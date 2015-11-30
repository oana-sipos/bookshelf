module Web::Controllers::Books
  class Destroy
    include Web::Action

    def call(params)
      book = BookRepository.find(params[:id])
      BookRepository.delete(book)
      redirect_to routes.books_path
    end
  end
end
