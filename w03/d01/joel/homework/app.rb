require "sinatra"
require "sinatra/reloader"
require "pg"

def run_sql(sql_string)
  connection = PG.connect(dbname: "my_blog", host: "localhost")
  result = connection.exec(sql_string)
  connection.close
  return result
end

get '/' do
  @blogs = run_sql("SELECT * FROM posts;")

  erb :home
end

get '/blog/new' do
  erb :new_blog_form
end

get '/blog/:id' do
   title_id = params[:id]
   @blog = run_sql("SELECT * FROM title WHERE id=#{title_id};").first

   erb :blog
end

post '/blogs' do
  run_sql("
    INSERT INTO my_blog
    (title, content, author, author_website)
    VALUES
    (
      '#{params["title"]}',
      '#{params["content"]}',
      '#{params["author"]}',
      '#{params["author_website"]}'
    )
  ")

  redirect "/"
end























