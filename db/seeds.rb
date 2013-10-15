# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create
  title: "Hand Painted Fall Tree",
  description: "Simple project using fingers and hands to create a nice little fall tree."
  url: "http://mattbgomez.com/fall-tree-art-using-handprints-and-fingerprints/", 
  photo_file_name: "tree_paint_project.jpg", 
  photo_content_type: "image/jpeg",
  photo_file_size: 53638, 
  photo_updated_at: "2013-10-14 00:59:56",
  min_time: nil, 
  max_time: nil, 
  min_age: nil,
  max_age: nil, 
  min_cost: nil, 
  max_cost: nil