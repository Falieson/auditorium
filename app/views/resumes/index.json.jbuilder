json.array!(@resumes) do |resume|
  json.extract! resume, :id, :company_title, :company_description, :company_industry, :job_title, :job_description, :firstday, :lastday, :personal_note
  json.url resume_url(resume, format: :json)
end
