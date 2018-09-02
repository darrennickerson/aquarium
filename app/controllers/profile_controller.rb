class ProfileController < ApplicationController
  def index

 @user = User.find_by_username(params[:username])
 @ad_count = @user.ads.count
  end
end
