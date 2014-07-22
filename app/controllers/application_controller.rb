class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
  end
  
  def get_city
  end
  
  
  def process_city
    if params['city'].downcase == 'chicago'
        @response = "Awesome"
      else
        @response = "No way"
    end
#     raise @response.inspect
    render 'get_city'
  end
  
  
end
