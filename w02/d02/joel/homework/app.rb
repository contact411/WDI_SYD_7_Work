require "sinatra"
require "sinatra/reloader"

# student_info = {
#   "jack" => {
#     name: "Jack Watson",
#     skills: ["Ruby", "iOS"]
#   }
#   "tony" => {
#     name: "Tony Abbott",
#     skills: ["Tyrany", "Oppression"]
#   }
#   "bill" => {
#     name: "Bill Clinton",
#     skills: ["Saxophone", "Good times"]
#   }
# }

get '/' do
  erb :home, layout: :layout 
end

get '/contact' do
  erb :contact, layout: :layout
end

get '/about' do
  erb :about, layout: :layout
end

get '/thank_you' do
  erb :thank_you, layout: :layout
end

get '/student_list' do
  erb :student_list, layout: :layout
end

get '/student/:name' do
   @student_name = params[:name]
   "#{student_name}"

   # @the_student = [student_name]
   erb :student, layout: :layout
end





