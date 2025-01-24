=begin
Name : Dongok Yang
Course : WEBD-3008 (265257)
U1- Ultimate Intro to Ruby Challenge
=end

# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#
# We are a way for the cosmos to know itself.

carl  = {
          :toast => 'cosmos',
          :punctuation => [ ',', '.', '?' ],
          :words => [ 'know', 'for', 'we']
        }

sagan = [
          { :are => 'are', 'A' => 'a' },
          { 'waaaaaay' => 'way', :th3 => 'the' },
          'itself',
          { 2 => ['to']}
        ]

# Here is an example of building a setence out of array/hash pieces.
example = [ 'test', 'a', 'is']
time    = { :that => 'This', :period => '.'}
puts "#{time[:that]} #{example[2]} #{example[1]} #{example[0]}#{time[:period]}"


# Create an arry of hashes named ghost
ghosts = [
  { name: 'Inky', age: 4, loves: 'reindeers', net_worth: 25.00 },
  { name: 'Pinky', age: 5, loves: 'garden tools', net_worth: 14.00 },
  { name: 'Blinky', age: 7, loves: 'ninjas', net_worth: 18.03 },
  { name: 'Clyde', age: 6, loves: 'yarn', net_worth: 0.00 }
]

# Processing the array using the given snippet
ghosts.each do |ghost|
  ghost_info = "#{ghost[:name]} is #{ghost[:age]} years old, "
  ghost_info += "loves #{ghost[:loves]} and "
  ghost_info += "has #{ghost[:net_worth]} dollars in the bank."
  puts ghost_info
end

#import necessary libraries
require 'net/http'
require 'json'
require 'pp'

#fetch data from dog breed api
url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.
pp dog_breeds # pp stands for pretty print.

#Print main breeds and sub-breeds in a nice format
dog_breeds["message"].each do |breed, sub_breeds|
  if sub_breeds.empty?
    puts "Main-breed:#{breed}"
  else
    puts "Main-breed:#{breed}
    Sub-breeds: #{sub_breeds.join(' ,')}"
  end
end



# URL for the dataset
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'

# Fetch data
uri = URI(url)
response = Net::HTTP.get(uri)
data = JSON.parse(response)

# Variable to count Ash trees
ash_tree_count = 0

# Check if botanical_name is Franxinus
data.each do |tree|
  if tree['botanical_name'].include?('Fraxinus')
    ash_tree_count += 1
  end
end

# Print the number of Ash trees
puts "The number of Ash trees: #{ash_tree_count}"