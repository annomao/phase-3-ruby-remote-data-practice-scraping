require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://flatironschool.com/"))
courses = doc.css(".heading-35-semibold")

list_of_courses = courses.map { |course| puts course.text.strip }
puts list_of_courses
