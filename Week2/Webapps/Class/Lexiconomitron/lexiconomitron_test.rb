require_relative './lexiconomitron.rb'
require 'pry'
require 'rspec'

RSpec.describe Lexiconomitron do
	before :each do 
		@lexi = Lexiconomitron.new
	end


    it "removes every letter t from the input" do
    	expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end

    it "gets an array of strings, reverses each string, returns the first and last elements of the string without t " do
  		expect(@lexi.shazam(["This","is","a","boring","test"])).to eq(["sih","se"])
  	end

  	it "gets an array of strings, returns and array of strings in that array with less than 3 characters, it also eats the t's. " do
  		expect(@lexi.oompa_loompa(["if","you","wanna","be","my","lover"])).to eq(["if", "you", "be", "my"])
  	end
end