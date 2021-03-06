venues = [
{ address: "123 Main Street", city: "Toronto", wheelchair_accessible: true, capacity: 100 },
{ address: "567 Centre Street", city: "Toronto", wheelchair_accessible: false, capacity: 400 },
{ address: "9B Ontario Street", city: "Montreal", wheelchair_accessible: true, capacity: 1000 },
{ address: "56 Road Avenue", city: "Ottawa", wheelchair_accessible: true, capacity: 650 },
{ address: "938 Avenue Way East", city: "Toronto", wheelchair_accessible: false, capacity: 90 },
{ address: "34 Main Street West", city: "London", wheelchair_accessible: false, capacity: 300 },
{ address: "44 Quebec Road", city: "Toronto", wheelchair_accessible: true, capacity: 200 },
{ address: "10 Spruce Avenue Ouest", city: "Montreal", wheelchair_accessible: false, capacity: 525 }

]

venues.each do |venue|
  if venue[:wheelchair_accessible] == true && venue[:capacity] >= 150 && venue[:city] == "Toronto"
    puts "#{venue[:address]}"
  end
end

venues.each do |venue|
  if venue[:wheelchair_accessible] == true && venue[:capacity] >= 150 && venue[:city] == "Toronto"
    puts "#{venue[:address]}"
  end
end
# p venue
# changes changes
# def venues_of_choice(venues)
#   possibilities = []
#   venues.each do |venue|   # venue variable gives you each of the items in the collection (each key, each value)
#     if venue[:wheelchair_accessible] == true && venue[:capacity] > 150 && venue[:city] == "Toronto"
#       possibilities << venues
#       return possibilities
#     end
# end
# end
#
# event_venues = venues_of_choice(venues)
# #
# event_venues.each do |venue|
#   return venues
#   puts venue[:address]
# end
# p venues
