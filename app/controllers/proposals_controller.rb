class ProposalsController < ApplicationController
    respond_to :html, :xml, :json
    before_action :authenticate_user!, except: [:index, :show]  
    before_action :correct_user, only: [:edit, :update, :destroy] 
    before_action :set_proposal, only: [:show, :edit, :update, :destroy]

  def index
    @proposals = Proposal.all
    respond_with(@proposals)
  end

  def show
    respond_with(@proposal)
  end

  def new
    @proposal = current_user.proposals.build
    respond_with(@proposal)
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
  end

  def destroy
    @proposal.destroy
    respond_with(@proposal)
  end

  private
    def set_proposal
      @proposal = Proposal.find(params[:id])
    end

    def correct_user
      @proposal = current_user.proposals.find_by(id: params[:id])
      redirect_to proposals_path, notice: "Not authorized to edit this proposal" if @proposal.nil?
    end
    def proposal_params
      
      params.require(:proposal).permit(:title, :image)


    end
end
