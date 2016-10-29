require "json"

puts "Starting libChecker"

system "pwd"
# puts Dir["lib/*.mp3"]

dataArray = []

Dir["lib/*.mp3"].each do |file|
  path = file
  name = file.split('/')[1].gsub('.mp3', '')
  dataArray.push({
    name: name,
    path: file.gsub(" ", "_")
  })
end

puts dataArray.to_json

File.open("json/soundFiles.json","w") do |f|
  f.write(dataArray.to_json)
end

# puts Dir["lib/*.mp3"].class
# puts Dir["lib/*.mp3"].length
