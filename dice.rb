require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do

 @di1 = rand(1..6)
 @di2 = rand(1..6)
 #"Die 1: #{di1} Die 2: #{di2}" outputs rolls of each die
 view "dice" #calls dice file
 
end



#get "/tacos" do
#    "yes please"
#end
