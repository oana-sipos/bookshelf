module Web::Controllers::Books
  class Update
    include Web::Action

    expose :book

    params do
      param :id, presence: true
      param :book do
        param :title,  presence: true
        param :author, presence: true
      end
    end

    def call(params)
      @book = BookRepository.find(params[:id])
      if params.valid?
        @book.update(params[:book])   # update of the entity
        BookRepository.update(@book)  # update of the database
        redirect_to routes.books_path
      end
    end
  end
end
