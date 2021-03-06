class ApplicationController < ActionController::Base

rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found'
    redirect_back_or root_path
    
end

def redirect_back_or(path)
    redirect_to request.referer || path 
end
end
