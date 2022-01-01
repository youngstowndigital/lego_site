# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

corvette = LegoSet.create({
    name: "Chevrolet Corvette C8.R Race Car and 1968 Chevrolet Corvette", 
    description: "The LEGO® Speed Champions Chevrolet Corvette C8.R Race Car and 1968 Chevrolet Corvette (76903) set makes a perfect gift for fans of high-performance automobiles. Kids and car enthusiasts get to collect and explore 2 groundbreaking Corvettes from different eras. Packed with realistic details, these epic cars are fun to build, great for display and awesome to race!", 
    item_number: "76903"
})

corvette.image.attach(
    io: File.open("#{Dir.pwd}/db/seed_images/corvette.jpg"), 
    filename: 'corvette.jpg', 
    content_type: 'image/jpg'
)

corvette.save

challenger = LegoSet.create({
    name: "Mopar Dodge//SRT Top Fuel Dragster and 1970 Dodge Challenger T/A", 
    description: "Fans of fast vehicles will love this LEGO® Speed Champions Mopar Dodge//SRT Top Fuel Dragster and 1970 Dodge Challenger T/A (76904) building kit. Packed with realistic details, these amazing replica models deliver a rewarding building experience, are great for display and awesome to race.", 
    item_number: "76904"
})

challenger.image.attach(
    io: File.open("#{Dir.pwd}/db/seed_images/challenger.jpg"), 
    filename: 'challenger.jpg', 
    content_type: 'image/jpg'
)

challenger.save

fordgt = LegoSet.create({
    name: "Ford GT Heritage Edition and Bronco R", 
    description: "Kids and car enthusiasts will love this LEGO® Speed Champions Ford GT Heritage Edition and Bronco R (76905) toy building set. Packed with realistic details, these amazing replica models deliver a rewarding building experience, look fantastic on display and are awesome for epic off-road and on-track race action!", 
    item_number: "76905"
})

fordgt.image.attach(
    io: File.open("#{Dir.pwd}/db/seed_images/fordgt.jpg"), 
    filename: 'fordgt.jpg', 
    content_type: 'image/jpg'
)

fordgt.save
