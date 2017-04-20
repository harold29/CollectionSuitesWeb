class SessionsController < ApplicationController
  def new
    session[:return_to] ||= request.referer
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

    # if !logged_in?
    #   user = ApplicationRecord::User.find_by(email: params[:session][:email].downcase)
    #   if user
    #     if Consumer.get_token_status(user.access_token)
    #       log_in user
    #       redirect_to videos_show_url(id: session.delete(:video_id))
    #     else
    #       destroy
    #       if update_user_at_refresh_token(user.refresh_token, email)
    #         log_in user
    #         redirect_to videos_show_url(id: session(:video_id))
    #       else
    #         redirect_to root_url
    #       end
    #     end
    #   else
    #     response = Consumer.auth_consumer(params[:session][:email], params[:session][:password])
    #     if response.success?
    #       user = User.create(access_token: response.parsed_response["access_token"],
    #                           expires_in: response.parsed_response["expires_in"],
    #                           refresh_token: response.parsed_response["refresh_token"],
    #                           scope: response.parsed_response["scope"],
    #                           created_at: response.parsed_response["created_at"],
    #                           token_type: response.parsed_response["token_type"],
    #                           email: params[:session][:email]
    #                         )
    #       if user.save
    #         log_in user
    #       else
    #         render 'new'
    #       end
    #     else
    #       flash[:error] = 'Invalid email/password combination'
    #       render action: 'new'
    #     end
    #   end
    # else
    #   redirect_to videos_show_url(id: session.delete(:video_id))
    # end
  end
end
