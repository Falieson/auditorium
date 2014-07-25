json.array!(@profiles) do |profile|
  json.extract! profile, :id, :company_title, :company_description, :company_industry, :job_title, :job_description, :firstday, :lastday, :personal_note
  json.url profile_url(profile, format: :json)
end
