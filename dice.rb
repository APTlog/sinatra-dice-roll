require "sinatra"

require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"
# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  heading = "<h1>Dice Roll</h1>"
  link_2d6 = "<a href='/dice/2/6'>Roll a two 6-sided Dice</a>"
  link_2d10 = "<a href='/dice/2/10'>Roll a two 10-sided Dice</a>"
  link_1d20 = "<a href='/dice/1/20'>Roll a one 20-sided Die</a>"
  link_5d4 = "<a href='/dice/5/4'>Roll five 4-sided Dice</a>"

  # Display initial header and links
  "<h1>Dice Roll</h1><br>#{link_2d6}<br>#{link_2d10}<br>#{link_1d20}<br>#{link_5d4}"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  content = "<h1>2d6</h1><p>#{outcome}</p>"
  content
end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
  content = "<h1>2d10</h1><p>#{outcome}</p>"
  content
end

get("/dice/1/20") do
  one_die = rand(1..20)
  outcome = "You rolled a #{one_die}."
  content = "<h1>1d20</h1><p>#{outcome}</p>"
  content
end

get("/dice/5/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  fifth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die + fifth_die
  outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, a #{fourth_die}, and a #{fifth_die} for a total of #{sum}."
  content = "<h1>5d4</h1><p>#{outcome}</p>"
  content
end
 
