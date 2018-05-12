class LoginsController < ApplicationController
  layout false

  def login

  end

  def create

    user = teste(params[:email], params[:password]) != nil

    if user != nil
      puts user
      #log_in user
      #redirect_to users_path
    else
      redirect_to signin_path

    end
  end

  private def teste(email, password)
    @user = User.new
    @user = User.find( email: email, password: password)

    if @user != nil
      @user
    else
      nil
    end
  end




end
