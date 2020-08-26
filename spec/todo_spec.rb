# frozen_string_literal: true

require_relative '../app/todo_app'
require 'rack/test'

describe TodoApp do

  include Rack::Test::Methods

  context 'get the base path' do
    let(:app) { TodoApp }
    let(:response) { get '/' }

    it 'returns a 200' do
      expect(response.status).to eq(200)
      expect(response.get_header('Content-Type')).to eq('text/plain')
      expect(response.body).to eq('Hello World')
    end
  end
end
