module Web::Controllers::Books
  class Index
    include Web::Action

    # we expose the contents of @books instance var to the outside world
    # so that Lotus can pass it to the view
    expose :books

    def call(params)
      @books = BookRepository.all
    end
  end
end
