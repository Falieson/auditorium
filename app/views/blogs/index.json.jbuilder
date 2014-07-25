json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :description, :git_url, :demo_url, :version, :lastpublished, :firstpublished
  json.url blog_url(blog, format: :json)
end
