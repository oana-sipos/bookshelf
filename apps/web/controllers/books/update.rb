module Web::Controllers::Books
  class Update
    include Web::Action

    def call(params)
      book = BookRepository.find(params[:id])
      BookRepository.update(book)
      redirect_to routes.books_path
    end
  end
end
