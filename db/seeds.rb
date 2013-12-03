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

Project.create({
  title: "Sponge Blocks", 
  description: "Building blocks made of sponges (cheap to make, create different shapes and colors, easy to stack and 'cling' to each other, won't hurt when they fall, etc).", 
  url: "http://www.pinterest.com/pin/38421403043863053/", 
  photo_file_name: "spongeblocks", 
  photo_content_type: "application/octet-stream", 
  photo_file_size: 184872, 
  photo_updated_at: "2013-10-25 18:36:46", 
  estimated_age: 2, 
  estimated_cost: 5, 
  estimated_simple: 2, 
  min_age: 2, 
  min_cost: 5, 
  average_simple: 2
})

Project.create({
  title: "Balloon Rockets", 
  description: "Create balloon rockets that race across the room using just string, some tape and a balloon. Have races, cause collisions, etc. Lots of fun!", 
  url: "http://discoverexplorelearn.com/balloon-rockets/", 
  photo_file_name: "balloon_rockets.jpg", 
  photo_content_type: "image/jpeg", 
  photo_file_size: 833229, 
  estimated_age: 4,
  estimated_cost: 2, 
  estimated_simple: 3, 
  min_age: 4, 
  min_cost: 2, 
  average_simple: 3
})

Project.create({
  title: "Frozen Bubbles",
  description: "Create a bubble in freezing temperatures and watch it freeze in to a miniature crystal ball and then shatter!",
  url: "http://sciencemadefun.net/blog/?p=348",
  photo_file_name: "frozen_bubble.jpg",
  photo_content_type: "image/jpeg",
  photo_file_size: 17332,
  estimated_age: 6,
  estimated_cost: 1,
  estimated_simple: 4,
  min_age: 6,
  min_cost: 1,
  average_simple: 4
})

Experience.create({
  details: "We literally keep a few boxes from our diaper deliveries folded up in the corner of the living room. We break them out every now and then and use them as tunnels with our daughter. She loves it, although more recently she seems to enjoy ordering us to go through the tunnels as much or more than going through them herself :)", 
  success: true,
  project_id: 2, 
  user_id: nil, 
  time: 45, 
  cost: 0, 
  min_age: 1, 
  recommended: true, 
  simple: 1
})













