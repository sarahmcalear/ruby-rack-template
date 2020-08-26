# frozen_string_literal: true

require_relative './todo_app'

class LoggingMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    before = Time.now.to_i
    status, headers, body = @app.call env
    after = Time.now.to_i
    log_message = "App took #{after - before} seconds."

    [status, headers, body << log_message]
  end
end
