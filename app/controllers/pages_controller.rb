class PagesController < ApplicationController
  def home
    if user_signed_in?
      redirect_to proposals_path  
  	end
  end
 
 def welcome

 end 

  def dashboard
  	 @proposals = current_user.proposals
  end
end
