require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/:choice") do
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample

  @page = params["choice"]

  if @page == "rock"
    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else @comp_move == "scissors"
      @outcome = "won"
    end
  elsif @page == "paper"
    if @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    else @comp_move == "rock"
      @outcome = "won"
    end
  elsif @page == "scissors"
    if @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "rock"
      @outcome = "lost"
    else @comp_move == "paper"
      @outcome = "won"
    end
  end

  erb(:choicepage)
end
