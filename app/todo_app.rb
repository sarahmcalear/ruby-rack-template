# frozen_string_literal: true

require_relative './todo'

class TodoApp
  def self.call(env)
    Todo.new.response
  end
end
