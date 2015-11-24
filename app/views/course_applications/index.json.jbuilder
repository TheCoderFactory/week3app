json.array!(@course_applications) do |course_application|
  json.extract! course_application, :id, :course_id, :user_id, :reason_for_applying, :prior_study
  json.url course_application_url(course_application, format: :json)
end
