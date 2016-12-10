class PagesController < ApplicationController
  def home

  end
 
 def welcome

 end 

  def dashboard
  	 @proposals = current_user.proposals
  end
  def archived 
 	@search = Proposal.where(status: 'Completed').order("created_at DESC").search(params[:q])
    @proposals = @search.result
end 
end
