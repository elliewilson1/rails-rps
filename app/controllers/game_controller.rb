class GameController < ApplicationController
  def rules
    render( { :template => "game_templates/rules" })
  end
  def rock
    @their_move = ["rock", "paper", "scissors"].sample

    if @their_move == "rock"
      @outcome = "tied"
    elsif @their_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render({ :template => "game_templates/play_rock" })
  end
  def paper
    @their_move = ["rock", "paper", "scissors"].sample

    if @their_move == "rock"
      @outcome = "won"
    elsif @their_move == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end

    render({ :template => "game_templates/play_paper" })
  end
  def scissors
    @their_move = ["rock", "paper", "scissors"].sample

    if @their_move == "rock"
      @outcome = "lost"
    elsif @their_move == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end

    render({ :template => "game_templates/play_scissors" })
  end
end
