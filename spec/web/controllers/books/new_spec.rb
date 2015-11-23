require 'spec_helper'
require_relative '../../../../apps/web/controllers/books/new'

class NewBookParams < Lotus::Action::Params
  param :book do
    param :title, presence: true
    param :author, presence: true
  end
end

describe Web::Controllers::Books::New do
  let(:params)    { NewBookParams.new({}) }
  let(:exposures) { Hash[params: params] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/books/new.html.erb') }
  let(:view)      { Web::Views::Books::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it "displays list of errors when params contain errors" do
    params.valid? # triger validations

    rendered.must_include('There was a problem with your submission')
    rendered.must_include('title is required')
  end
end
