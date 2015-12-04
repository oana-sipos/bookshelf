module Web::Controllers::Books
  class Show
    include Web::Action

    expose :book

    def call(params)
      @book = BookRepository.find(params[:id])
    end
  end
end
