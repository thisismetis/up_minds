%w(
  Python
  PHP
  JavaScript
  C++
  Ruby\ on\ Rails
  Ruby
  SQL
  Java
  C
  PostgreSQL
  MongoDB
  XML
  ASP
  RSS
  HTML
  CSS
  Illustration
  Design
  Typography
  Sass
  Less
  Web\ Design
  App\ Design
  Mobile\ Design
).each do |skill|
  Skill.find_or_create_by(name: skill)
end
