# app/web.rb
module Web
  class Action
    # Common functionality for all actions
    def handle(request, response)
      raise NotImplementedError, "Subclasses must implement the handle method"
    end

    def json_response(data, status: 200)
      response.body = data.to_json
      response.status = status
      response.content_type = 'application/json'
    end

    # Additional common methods can be added here
  end
end
