require "json"
require "shellwords"

puts "Starting libChecker"

system "pwd"
# puts Dir["lib/*.mp3"]

dataArray = []

Dir["lib/*.mp3"].each do |file|
  path = file
  system ("mv " + file.shellescape + " " + file.gsub(" ", "_"))
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

# f = File.new("xml/soundFiles.xml", "w")
# Dir["lib/*.mp3"].each do |file|
#   f.write("<soundfile>\n")
#   path = file
#   system ("mv " + file.shellescape + " " + file.gsub(" ", "_"))
#   name = file.split('/')[1].gsub('.mp3', '')
#
#   f.write("\t<name>" + name + "</name>\n")
#   f.write("\t<path>" + path + "</path>\n")
#   f.write("</soundfile>\n\n")
# end
# f.close

# puts Dir["lib/*.mp3"].class
# puts Dir["lib/*.mp3"].length
