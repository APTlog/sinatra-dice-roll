require "better_errors"
require "binding_of_caller"
require "sinatra"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

#get("/howdy") do#
  return "Hello, world!"
#end

#get("/") do
 #lucky_num = rand(100)
  #return "Your lucky number for the day is: #{lucky_num} " 
#end

#require "sinatra/reloader"
#get("/giraffe") do
 # "Hopefully this shows up without having to restart the server 🤞🏾"
#end

get("/roll") do
  first_die = rand(1..6)
  second_die = rand(1...6)
  sum = first_die + second_die

  outcome = " You rolled #{first_die} and #{second_die} for a total sum of #{sum}"
  heading = "<h1>Dice Roll</h1>"
  link = "<a href= '/roll'> Roll a 2-sided die </a>"
  # Combine with outcome paragraph
  content = "#{heading} #{link}<p>#{outcome}</p>"
end
