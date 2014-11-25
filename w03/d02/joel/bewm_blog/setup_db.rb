require "pg"

con = PG.connect(dbname: 'bewm_blog', host: 'localhost')

# Create the authors table
con.exec("
  CREATE TABLE authors
  (
    id SERIAL4 PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    website VARCHAR(255) NOT NULL,
    twitter VARCHAR(50) NOT NULL,
    googleplus VARCHAR(50) NOT NULL,
    bio TEXT NOT NULL
  );
")

# Create the posts table
con.exec("
  CREATE TABLE posts
  (
    id SERIAL4 PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    creation DATE DEFAULT NOW(),
    author_id INT4 REFERENCES authors(id)
  );
")


# Seed data
con.exec("
  INSERT INTO authors (name, website, twitter, googleplus, bio) VALUES ('Joel Hampton', 'http://spendr.io', '@contact411', 'joelhampton@gmail.com', 'He was born in the USA and is an all around great guy.'),
                                              ('Burak Obama', 'http://www.whitehouse.gov', '@whitehouse', '/whitehouse', 'He was born in the USA and is an all around great guy.'),
                                              ('Tim Cook', 'http://www.apple.com', '@timcook', 'timmy@apple.com', 'He was born in the USA and is an all around great guy.'),
                                              ('Rod Johnson', 'http://www.rodjohnson.com', '@rodjohnson', 'johnsonator@gmail.com', 'He was born in the USA and is an all around great guy.')
")

con.exec("
  INSERT INTO posts (title, content, author_id) VALUES ('Hello World!!', 'This is your first blog post. Its an amazing feeling if you actually see it.. That means your website is working on some level.. Congratulations... BEWM!!', 1),
                                                     ('Post number 2!! Wow, such post!', 'Your second blog post.. Its pretty safe to assume the third post is going to be successful.. But maybe not.. Three is kind of an unlucky number. Okay.. okay.. Thats actually 13', 2),
                                                     ('You cant miss this one!', 'A red hot post.. The third to be exact.  Glad youre here to enjoy this magical bullshit Im spitting. Eat it up people.. Its the second to last post that will be created by default.', 3),
                                                     ('The final post.. Is my life going to be okay?', 'The end is near.. This is the final default post. It was really nice for you to be reading.', 4)
")
# And we out!
con.close
