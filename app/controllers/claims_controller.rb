class ClaimsController < ApplicationController
  before_action :set_claim, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def creator_history
    @claims = Claim.all.where(creator: current_user).order("created_at DESC")
        @proposals = Proposal.all

  end
  
  def claimer_history
     @claims = Claim.all.where(claimer: current_user).order("created_at DESC")
    @proposals = Proposal.all
  end

  def index
    @claims = Claim.all
    respond_with(@claims)
  end

  def show
    respond_with(@claim)
  end

  def new
    @claim = Claim.new
    @proposal = Proposal.find(params[:proposal_id])

  end

  def edit
  end

  def create
     @claim = Claim.new(claim_params)
 
    @proposal = Proposal.find(params[:proposal_id])
    @creator = @proposal.user

    @claim.proposal_id = @proposal.id
    @claim.claimer_id = current_user.id
    @claim.creator_id = @creator.id

    @claim.save
    respond_with(@proposal)
  end

  def update
    @claim.update(claim_params)
    respond_with(@claim)
  end

  def destroy
    @claim.destroy
    respond_with(@claim)
  end

  private
    def set_claim
      @claim = Claim.find(params[:id])
    end

    def claim_params
      params.require(:claim).permit(:explanation, :proposal_id, :user_id)
    end
end
