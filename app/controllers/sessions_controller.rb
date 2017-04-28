class SessionsController < ApplicationController
  def new
    # session[:return_to] ||= request.referer
  end

  def create
    user = ApplicationRecord::User.find_by(code: params[:session][:code].downcase)
    if user
      log_in user
      # redirect_to home_index_url
      redirect_to home_url
    else
      flash[:error] = 'Invalid email/password combination'
      render action: 'new'
    end
  end
end
