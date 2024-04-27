require "sinatra"

require "sinatra/reloader"

get("/") do
  # Create links for rolling different dice as list items
  link_2d6 = "<li><a href='/dice/2/6'>Roll two 6-sided dice</a></li>"
  link_2d10 = "<li><a href='/dice/2/10'>Roll two 10-sided dice</a></li>"
  link_1d20 = "<li><a href='/dice/1/20'>Roll one 20-sided die</a></li>"
  link_5d4= "<li><a href='/dice/5/4'>Roll five 4-sided dice</a></li>"

  # Display links as an unordered list with bullet points
  "<h1>Dice Roll</h1><ul>#{link_2d6}#{link_2d10}#{link_1d20}#{link_5d4}</ul>"
end

get("/dice/2/6") do
  # Roll two 6-sided dice
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  # Display outcome with new header
  "<h1>2d6</h1><p>#{outcome}</p>"
end

get("/dice/2/10") do
  # Roll two 10-sided dice
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  # Display outcome with new header
  "<h1>2d10</h1><p>#{outcome}</p>"
end

get("/dice/1/20") do
  # Roll one 20-sided die
  first_die = rand(1..20)
  outcome = "You rolled a #{first_die}."

  # Display outcome with new header
  "<h1>1d20</h1><p>#{outcome}</p>"
end

get("/dice/5/4") do
  # Roll five 4-sided dice
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  fifth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die + fifth_die
  outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, a #{fourth_die}, and a #{fifth_die} for a total of #{sum}."

  # Display outcome with new header
  "<h1>5d4</h1><p>#{outcome}</p>"
end
