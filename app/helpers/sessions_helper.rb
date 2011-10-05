module SessionsHelper

  def sign_in(user)
#     cookies.permanent.signed[:remember_token] = [user.id, user.salt]
    session[:user_id] = user.id
    self.current_user = user
  end
  
  def current_user=(user)
    @current_user = user
  end

  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
#     @current_user ||= user_from_remember_token
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
#     cookies.delete(:remember_token)
    session[:user_id] = nil
    self.current_user = nil
  end

  private
    
    def deny_access
      redirect_to signin_path, :notice => "Please sign in to access this page."
    end
end
