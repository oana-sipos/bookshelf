require 'json'
require 'lotus/router'
require 'lotus/controller'

module Api::Controllers::Books
  class Index
    include Api::Action

    expose :books

    # default_request_format  :json
    # default_response_format :json

    def call(params)
      @books = BookRepository.all
      self.body = JSON.dump(@books)
    end
  end
end
