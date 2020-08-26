# frozen_string_literal: true

class Todo
  def response
    [ 200, { 'Content-Type' => 'text/plain' }, ['Hello World'] ]
  end
end
