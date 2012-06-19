require	'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra/base'
require 'erb'

class Repr < Sinatra::Base
	set :static, true
	set :public, File.dirname(__FILE__) + '/static'

	get '/' do
		@minerals = [ ["Tritanium",2.12], ["Pyerite",4.05],
		 			  ["Mexallon",22.25], ["Isogen",42.01],
		 			  ["Nocxium", 96.00], ["Zydrine",927.75],
		  			  ["Megacyte",1912.00], ["Morphite",3102.00] ]
		erb :index
	end
end

Repr.run!