require_relative 'spec_helper.rb'

describe RockPapeScis do

  describe "#self.play" do
    it "should execute a new game with a tie" do
      result = RockPapeScis.play(parag = {name: "Parag", move: "rock"}, daniel = {name: "Daniel", move:"rock"})
      expect(result).to eq(:tie)
    end

    it "should execute a new game with player 1 rock beating player 2 scissor" do
      result = RockPapeScis.play(parag = {name: "Parag", move: "rock"}, daniel = {name: "Daniel", move:"scissor"})
      expect(result).to eq("Parag")
    end

    it "should execute a new game with player 1 scissor beating player 2 paper" do
      result = RockPapeScis.play(parag = {name: "Parag", move: "scissor"}, daniel = {name: "Daniel", move:"paper"})
      expect(result).to eq("Parag")
    end

    it "should execute a new game with player 1 paper beating player 2 rock" do
      result = RockPapeScis.play(parag = {name: "Parag", move: "paper"}, daniel = {name: "Daniel", move:"rock"})
      expect(result).to eq("Parag")
    end

    it "should execute a new game with player 2 rock beating player 1 scissor" do
      result = RockPapeScis.play(parag = {name: "Parag", move: "scissor"}, daniel = {name: "Daniel", move:"rock"})
      expect(result).to eq("Daniel")
    end

    it "should execute a new game with player 2 scissor beating player 1 paper" do
      result = RockPapeScis.play(parag = {name: "Parag", move: "paper"}, daniel = {name: "Daniel", move:"scissor"})
      expect(result).to eq("Daniel")
    end

    it "should execute a new game with player 2 paper beating player 1 rock" do
      result = RockPapeScis.play(parag = {name: "Parag", move: "rock"}, daniel = {name: "Daniel", move:"paper"})
      expect(result).to eq("Daniel")
    end    
  end


end