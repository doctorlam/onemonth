class ProposalsController < ApplicationController
    load_and_authorize_resource :except => [:create]
    respond_to :html, :xml, :json
   
def index

    @proposals = Proposal.all
    respond_with(@proposals)

  end

  def show

    
  end

  def new
    
  end

  def edit

  end

  def create
    @proposal = current_user.proposals.build(proposal_params)
    @proposal.save
    respond_with(@proposal) 
   

  end

  def update
   @proposal.update(proposal_params)
    respond_with(@proposal)
        flash[:success] = "Proposal sucessfully updated."

      
  end

  def destroy
    @proposal.destroy
    redirect_to proposals_path
    flash[:success] = "Proposal sucessfully deleted."

  end

  
   
    def proposal_params
      
      params.require(:proposal).permit(:client_name, :client_email, :client_phone1, :client_phone2, :client_phone3, :feedback, :role, :relevance, :course, :subject, :course_id, :semester_id, :time, :title, :abstract, :first_name, :last_name, :organization, :status, :subject)

    end
 
end
