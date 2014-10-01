require "rock_pape_scis/version"

module RockPapeScis

  def self.play(player1={}, player2={})
    if player1[:move] == player2[:move]
      return :tie
    elsif player1[:move] == "rock" && player2[:move] == "scissor"
      return player1[:name]
    elsif player1[:move] == "scissor" && player2[:move] == "paper"
      return player1[:name]
    elsif player1[:move] == "paper" && player2[:move] == "rock"
      return player1[:name]
    elsif player2[:move] == "rock" && player1[:move] == "scissor"
      return player2[:name]
    elsif player2[:move] == "scissor" && player1[:move] == "paper"
      return player2[:name]
    else player2[:move] == "paper" && player1[:move] == "rock"
      return player2[:name]
    end
  end



end
