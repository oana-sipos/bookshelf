require 'rubygems'
require 'bundler/setup'
require 'lotus/setup'
require 'pry'
require_relative '../lib/bookshelf'
require_relative '../apps/web/application'
require_relative '../apps/api/application'

Lotus::Container.configure do
  mount Api::Application, at: '/api/' # less chance of conflict
  mount Web::Application, at: '/'
end
