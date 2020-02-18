require "sinatra"
require "sinatra/reloader"
require "geocoder" #pre written by Brian
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }                                     

get "/" do
  view "geocode"
end

get "/map" do #new route at /map
results = Geocoder.search(params["q"])
lat_long = results.first.coordinates # [lat, long] array 
 "#{lat_long[0]} #{lat_long[1]}" #writes the lat and long points to the screen
end