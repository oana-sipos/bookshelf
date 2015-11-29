module Web::Views::Books
  class Index
    include Web::View

    def books
      Kernel.puts '-'*30
      Kernel.puts "custom books"
      Kernel.puts '-'*30
      Kernel.pp @locals
      @locals[:books]
    end

    def authors_names
      @locals[:books].map(&:author).join(', ')
    end
  end
end
