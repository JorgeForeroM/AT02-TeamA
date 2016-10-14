class ProjectsPut
  def self.call_and_return_response(client, method, json, project_id)
    end_point = "/projects/#{project_id}"
    http_request = client.get_request(method, end_point)
    http_request.body = json
    http_response = client.execute_request(client.get_connection, http_request)
    project = Project.get_parser_project(http_response.body)
    return http_response, project
  end
end

