class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelpercd
  
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts(user)
    @count_microposts = user.microposts.count
  end
end
