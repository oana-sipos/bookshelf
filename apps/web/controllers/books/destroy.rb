module Web::Controllers::Books
  class Destroy
    include Web::Action

    expose :books

    def call(params)
      @book = BookRepository.destroy(params[:book])
      redirect_to routes.books_path
    end
  end
end
