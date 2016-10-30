class ClaimsController < ApplicationController
  before_action :set_claim, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def history
    @claims = Claim.all.where(client: current_user).order("created_at DESC")
    @claims = Claim.all.where(instructor: current_user).order("created_at DESC")
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
    @client = @proposal.user

    @claim.proposal_id = @proposal.id
    @claim.instructor_id = current_user.id
    @claim.client_id = @client.id

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