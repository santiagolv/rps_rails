class GameController < ApplicationController
  def rps
    user_wins=0
    computer_wins=0
    @user_move = params[:the_move]
    computer_options = ["rock", "paper", "scissors"]
    computer_move = computer_options.sample
    computer_choice = computer_move
    user_choice = params[:the_move]
    if user_choice==computer_choice
      @result= "It is a tie!"
      elsif user_choice=="rock" && computer_choice=="paper"
      @result= "You lost!"
      computer_wins+=1
      elsif user_choice=="rock" && computer_choice=="scissors"
      @result= "You won!"
      user_wins+=1
      elsif user_choice=="paper" && computer_choice=="scissors"
      @result= "You lost!"
      computer_wins+=1
      elsif user_choice=="paper" && computer_choice=="rock"
      @result= "You won!"
      user_wins+=1
      elsif user_choice=="scissors" && computer_choice=="rock"
      @result= "You lost!"
      computer_wins+=1
    else @result= "You won!"
      user_wins+=1
    end
    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = computer_choice
    @computer_score = computer_wins
    @user_score = user_wins

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
