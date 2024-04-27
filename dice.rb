require "sinatra"

require "sinatra/reloader"

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  erb(:two_six, { :layout => :wrapper })
end


get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die
  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  erb(:two_ten, { :layout => :wrapper })
end

get("/dice/1/20") do
  first_die = rand(1..20)
  @outcome = "You rolled a #{first_die}."

  erb(:one_twenty, { :layout => :wrapper })
end

get("/dice/5/4") do
  # Roll five 4-sided dice
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  fifth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die + fifth_die
  @outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, a #{fourth_die}, and a #{fifth_die} for a total of #{sum}."
  erb(:five_four, { :layout => :wrapper })
end
