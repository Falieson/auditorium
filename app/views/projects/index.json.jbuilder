json.array!(@projects) do |project|
  json.extract! project, :id, :title, :description, :git_url, :demo_url, :version, :lastpublished, :firstpublished
  json.url project_url(project, format: :json)
end
