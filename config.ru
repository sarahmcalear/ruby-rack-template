# frozen_string_literal: true

require 'thin'
require './app/todo_app.rb'
require './app/logging_middleware.rb'

use LoggingMiddleware
run TodoApp
