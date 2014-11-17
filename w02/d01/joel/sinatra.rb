require 'sinatra'
require "sinatra/reloader"

# using postman you can 
# fake put and post using_method


get '/roman_numeral/:number' do
  real_number = params[:number].to_i
  @number = params[:number]
  
  @string = "I" * real_number

  @string = @string.gsub("I" * 1000, "M").
    gsub("I" * 900,  "CM").
    gsub("I" * 500,  "D").
    gsub("I" * 400,  "CD").
    gsub("I" * 100,  "C").
    gsub("I" * 90,   "XC").
    gsub("I" * 50,   "L").
    gsub("I" * 40,   "XL").
    gsub("I" * 10,   "X").
    gsub("I" * 9,    "IX").
    gsub("I" * 6,    "VI").
    gsub("I" * 5,    "V").
    gsub("I" * 4,    "IV")


#  "Your number converts to #{roman_answer} in roman numerals."

  erb :roman_numeral
end

# # slugs are for autogenterated URLs
# # www.example.com
# get "posts/:id/:slug" do
#   "Load blog post with ID #{params[:id]} and slug #{params[:slug]}"
# end



# get "/joel" do
#   "Hello Joel!  This shit works!"
# end




# get 'search/:query/:sort' do
#   "#{params[:query]} #{params[:sort]}"
# end

# #####  This is the realness!! ####
# #####  Look here for THE ANSWERS TO LIFE ####
# #####  Life is a website that doesn't type the same thing over and over #####

# post '/blog' do
#   @title = params[:title].
#   @content = params[:content]
#   erb :blog_post, layout: :page
# end

# ##### Life has ended... Thank you for looking.



# post '/users' do
#   "You signed up with the email address:" +
#   "#{params[:email]}" +
#   " and password: #{params[:password]}"
# end

# #performs a search on query
# get "/search/:query" do
#   "You are searching for #{params[:query]}"
# end

# #changes the name of the person
# get "/hello/:name" do
#   "Hello #{params[:name]}!"
# end

# #static
# get "/screencasts" do
#   "The list of screencasts"
# end

# #to the root of the webserver
# get "/" do
#   "Bitchin!"
# end