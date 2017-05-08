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
      abort
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
    @user = User.create(user_params)
    
  end

  def thanksmem
  end

  def createuser
    abort
    respond_to do |format|
      if user.persisted?
        format.html { redirect_to(thanks_interest_url) }
      else
        # TODO: hace falta agregar si hay un error en la pagina. Es mejor dejar las verificaciones
        # en el frontend para evitar mas trabajo en el back.
      end
    end
  end

  def updateuser
  end

  private

  def user_params
    params.require(:user).permit(:name, :last_name, :p1, :zip, :email)
  end
end
