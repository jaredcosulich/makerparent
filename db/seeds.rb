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
  photo_file_size: 53638,
  estimated_simple: 3,
  estimated_age: 3
})
  
Project.create({
  title: "Box Tunnel!", 
  description: "Save the cardboard boxes from deliveries. They can be cut up for materials in other projects, used to build forts, and they make great tunnels :)", 
  url: "", 
  photo_file_name: "cardboard_box.jpg", 
  photo_content_type: "image/jpeg", 
  photo_file_size: 2508155, 
  photo_updated_at: "2013-10-15 21:53:43",
  estimated_simple: 1,
  estimated_age: 1
})  

Project.create({
  title: "Create A Flip Book", 
  description: "All you need is some paper and a pen and you can create an animated scene that dances across the pages. You can find some more tips", 
  url: "http://www.incredibleart.org/lessons/high/high18.html", 
  photo_file_name: "flipbook.jpg", 
  photo_content_type: "image/jpeg", 
  photo_file_size: 9867,
  estimated_simple: 2,
  estimated_age: 12
})

Project.create({
  title: "Keep your child alive :)", 
  description: "This super-fun activity is super-easy to do. Just put your child on the ground or let them crawl or walk around and see what they do. Just make sure they don't swallow anything dangerous, put fingers in to power outlets, fall off of chairs or tables, etc. Super-fun :)", 
  url: "", 
  photo_file_name: "2012-05-06_19.12.02.jpg", 
  photo_content_type: "image/jpeg", 
  photo_file_size: 2410199, 
  photo_updated_at: "2013-10-25 17:26:31", 
  estimated_age: 1, 
  estimated_cost: 0, 
  estimated_simple: 1
})

Project.create({
  title: "Laundry Basket Race Car", 
  description: "Take your laundry basket, throw your kid in, and race down the hall. Hours of fun (or at least a few minutes) while you're doing laundry.", 
  url: "", 
  photo_file_name: "laundry_basket_run.png", 
  photo_content_type: "image/png",
  photo_file_size: 619518, 
  photo_updated_at: "2013-10-25 17:56:46", 
  estimated_age: 1, 
  estimated_cost: 0, 
  estimated_simple: 1
})

Project.create({
  title: 'Create A Foxhole Radio',
  description: 'Create a working radio using simple materials. It\'s called a foxhole radio because soldiers used to build them in World War II using spare parts.',
  url: 'http://www.youtube.com/watch?v=skKmwT0EccE',  
  photo_file_name: "foxholeradio.jpg", 
  photo_content_type: "image/jpeg", 
  photo_file_size: 9867,
  estimated_simple: 7,
  estimated_age: 14
})
  
Project.create({
  title: "Heron of Alexandria and the Gin Pole", 
  description: "Create a pole-mounted pulley system created by the ancient greeks capable of lifting huge weights (multiple tons).", 
  url: "http://makezine.com/projects/make-34/heron-of-alexandria-and-the-gin-pole/", 
  photo_file_name: "heronpole.jpg", 
  photo_content_type: "image/jpeg", 
  photo_file_size: 52591,
  estimated_simple: 9,
  estimated_age: 13
})  



