["Python", "PHP", "JavaScript", "C++", "Ruby on Rails", "Ruby", "SQL", "Java", "C", "HTML", "CSS", "PostgreSQL", "mondoDB", "XML", "ASP", "RSS"].each do |skill|
  Skill.find_or_create_by_name(skill)
end

