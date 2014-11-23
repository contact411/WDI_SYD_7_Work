print "Do you want to create a car ad? (y/n)"
start_again = gets.strip.downcase

if start_again == 'y'
  if File.exists? 'ad.txt'
    File.unlink('ad.txt')
  end
end


### Step 1... Do we even have a file?
unless File.exist? 'ad.txt'
  file = File.new('ad.txt', 'a+')
  file.close


  ### Step 2
  print "Number of KMs:"
  number_of_kms = gets.strip.to_i

  print "What kind of doors does it have:"
  door_type = gets.strip

  print "Does it have a sunroof:"
  sunroof = gets.strip

  print "What kind of engine:"
  engine = gets.strip

  print "What is the asking price:"
  price = gets.strip.to_i

  # Step 3:  Write the data, yo!
  File.open('ad.txt', 'a+') do |ad_file|
    ad_file.write("Number of KMs: #{number_of_kms}\n")
    ad_file.write("Door type: #{door_type}\n")
    ad_file.write("Sunroof: #{sunroof}\n")
    ad_file.write("Engine: #{engine}\n")
    ad_file.write("Price: #{price}\n\n")
  end

else
  #step 4: getting jiggy wit it.. Display the file
  file = File.new('ad.txt', 'r')
  puts file.read
end