class HomeController < ApplicationController
  # before:authenticate
  def index
    if logged_in?
      render 'index'
    else
      redirect_to root_url and return
    end
  end

  def home
    if logged_in?
      render 'index'
    else
      redirect_to root_url and return
    end
  end

  def thanks
  end

  def thanksinst
  end

  def thankregssmem
  end

  def registerform
  end

  def updatesform
  end

  def thanksmem
  end

  def createuser
    abort
    user = User.new(params[:user])
  end

end
