require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative './lib/passwords.rb'

memory = []

get "/" do 

	if memory == []
		@output = ""
		erb :index
	else
		newuser = User.new(memory[0],memory[1])
		@output = newuser.checkall
		memory.delete_at(0)
		memory.delete_at(0)
		erb :index
	end

end

post "/checkpass" do

newuser = User.new(params[:email],params[:pass])
	memory.push(params[:email])
	memory.push(params[:pass])

	redirect to ("/")
end