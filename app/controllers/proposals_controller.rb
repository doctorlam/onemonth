class ProposalsController < ApplicationController
    respond_to :html, :xml, :json
    before_action :set_proposal, only: [:show, :edit, :update, :destroy]

  def index
    @proposals = Proposal.all
    respond_with(@proposals)
  end

  def show
    respond_with(@proposal)
  end

  def new
    @proposal = Proposal.new
    respond_with(@proposal)
  end

  def edit
  end

  def create
    @proposal = Proposal.new(proposal_params)
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

    def proposal_params
      params.require(:proposal).permit(:title)
    end
end
