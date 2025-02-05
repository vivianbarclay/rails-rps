class GameController < ApplicationController
  def home
  end

  def rock
    play("rock")
    render :rock
  end

  def paper
    play("paper")
    render :paper
  end

  def scissors
    play("scissors")
    render :scissors
  end

  def rules
    redirect_to root_path
  end

  private

  def play(user_choice)
    options = ["rock", "paper", "scissors"]
    computer_choice = options.sample

    if user_choice == computer_choice
      @outcome = "tied"  # Fixed to show "tied" instead of "tie"
    elsif
      (user_choice == "rock" && computer_choice == "scissors") ||
      (user_choice == "paper" && computer_choice == "rock") ||
      (user_choice == "scissors" && computer_choice == "paper")
      
      @outcome = "won"

    else

      @outcome = "lost"
      
    end

    @user_choice = user_choice
    @computer_choice = computer_choice
  end
end
