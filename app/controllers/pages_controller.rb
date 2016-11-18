class PagesController < ApplicationController
  def home

  end
 
 def welcome

 end 

  def dashboard
  	 @proposals = current_user.proposals
  end
  def archived 
   @proposals = Proposal.where(status:'Completed').order("created_at DESC")
end 
end
