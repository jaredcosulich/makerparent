# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create({
  title: "Hand Painted Fall Tree",
  description: "Simple project using fingers and hands to create a nice little fall tree.",
  url: "http://mattbgomez.com/fall-tree-art-using-handprints-and-fingerprints/", 
  photo_file_name: "tree_paint_project.jpg", 
  photo_content_type: "image/jpeg",
  photo_file_size: 53638
})
  
Project.create({
  title: "Box Tunnel!", 
  description: "Save the cardboard boxes from deliveries. They can be cut up for materials in other projects, used to build forts, and they make great tunnels :)", 
  url: "", 
  photo_file_name: "cardboard_box.jpg", 
  photo_content_type: "image/jpeg", 
  photo_file_size: 2508155, 
  photo_updated_at: "2013-10-15 21:53:43"
})  

Project.create({
  title: "Create A Flip Book", 
  description: "All you need is some paper and a pen and you can create an animated scene that dances across the pages.", 
  url: "http://www.youtube.com/watch?v=iExiCGV7jzI&hd=1", 
  photo_file_name: "flipbook.jpg", 
  photo_content_type: "image/jpeg", 
  photo_file_size: 9867
})

Project.create({
  title: 'Create A Foxhole Radio',
  description: 'Create a working radio using simple materials. It\'s called a foxhole radio because soldiers used to build them in World War II using spare parts.',
  url: 'http://www.youtube.com/watch?v=skKmwT0EccE',  
  photo_file_name: "foxholeradio.jpg", 
  photo_content_type: "image/jpeg", 
  photo_file_size: 9867
})
  
Project.create({
  title: "Heron of Alexandria and the Gin Pole", 
  description: "Create a pole-mounted pulley system created by the ancient greeks capable of lifting huge weights (multiple tons).", 
  url: "http://makezine.com/projects/make-34/heron-of-alexandria-and-the-gin-pole/", 
  photo_file_name: "heronpole.jpg", 
  photo_content_type: "image/jpeg", 
  photo_file_size: 52591
})  
