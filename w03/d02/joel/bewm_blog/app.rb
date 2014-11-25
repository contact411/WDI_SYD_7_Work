require "sinatra"
require "sinatra/reloader"
require "pg"

def run_sql(sql)
  con = PG.connect(dbname: 'bewm_blog', host: 'localhost')
  res = con.exec(sql)
  con.close
  return res
end

get '/' do
  @posts = run_sql("
  SELECT posts.title, posts.content, posts.id,
  authors.name AS author_name,
  authors.website AS author_website,
  authors.twitter AS author_twitter,
  authors.googleplus AS author_googleplus,
  authors.bio AS author_bio
  FROM posts
  LEFT OUTER JOIN authors
  ON posts.author_id = authors.id;
")
  erb :home
end