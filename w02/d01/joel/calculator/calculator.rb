require 'sinatra'
require "sinatra/reloader"



  get '/' do
    erb :layout
  end

  post '/calculator' do

    @num_1 = params[:num_1].to_f
    @num_2 = params[:num_2].to_f
    @operation = params[:operation]


    # "#{ @num_1 } and #{ @num_2 }, #{ @operation }"

    case @operation
    when 'a'
      @answer = @num_1 + @num_2
    when 's'
      @answer = @num_1 - @num_2
    when 'm'
      @answer = @num_1 * @num_2
    when 'd'
      @answer = @num_1 / @num_2
    else
      @answer = "Not a number!"
    end

    
    "#{ @answer }"

    erb :layout

  end

#  def basic_calc
#    print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
#    operation = gets.chomp.downcase


