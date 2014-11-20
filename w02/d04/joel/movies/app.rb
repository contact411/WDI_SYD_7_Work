require "sinatra"
require "sinatra/reloader"
require "httparty"
require "pry"
# response = HTTParty.get('http://www.omdb.')

#



get '/' do
  if params[:movie_title]
    
  end
  erb :home
end

get '/search' do
  if params[:button] == "search"
    movie_list = params[:button].gsub(' ', '+')
    response = HTTParty.get("http://www.omdbapi.com/?s=#{movie_list}")
    @movies = JSON(response)["Search"]
  end

  if params[:button] == "lucky"
    movie_id = params[:button].gsub(' ', '+')
    response = HTTParty.get("http://www.omdbapi.com/?t=#{movie_id}")
    @movie = JSON(response)
  end


  erb :home
end

get '/movies/:imdb_id' do
    movie_id = params[:imdb_id]
    response = HTTParty.get("http://www.omdbapi.com/?i=#{movie_id}")
    @movie = JSON(response)

    erb :movie
end   




