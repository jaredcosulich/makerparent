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
  photo_file_size: 53638
  
Project.create
  title: "Box Tunnel!", 
  description: "Save the cardboard boxes from deliveries. They can be cut up for materials in other projects, used to build forts, and they make great tunnels :)", 
  url: "", 
  photo_file_name: "cardboard_box.jpg", 
  photo_content_type: "image/jpeg", 
  photo_file_size: 2508155, 
  photo_updated_at: "2013-10-15 21:53:43"
  
Project.create
  itle: "Create A Flip Book", 
  description: "All you need is some paper and a pen and you can cr...", 
  url: "http://www.youtube.com/watch?v=iExiCGV7jzI&hd=1", 
  photo_file_name: "flipbook.jpg", 
  photo_content_type: "image/jpeg", 
  photo_file_size: 9867