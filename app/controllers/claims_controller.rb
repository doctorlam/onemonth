class ClaimsController < ApplicationController
  before_action :set_claim, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def creator_history
    @claims = Claim.all.where(creator: current_user).order("created_at DESC")
    @proposals = current_user.proposals
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

    respond_to do |format|
      if @claim.save
        format.html { redirect_to claimer_history_url, notice: 'Claim was successfully created.' }
        format.json { render :show, status: :created, location: @claim }
      else
        format.html { render :new }
        format.json { render json: @claim.errors, status: :unprocessable_entity }
      end
    end
  end
  

 def update
    respond_to do |format|
      if @claim.update(claim_params)
        format.html { redirect_to claimer_history_url, notice: 'Claim was successfully updated.' }
        format.json { render :show, status: :ok, location: @claim }
      else
        format.html { render :edit }
        format.json { render json: @claim.errors, status: :unprocessable_entity }
      end
    end
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
      params.require(:claim).permit(:claim_status, :explanation, :proposal_id, :user_id, :first_name)
    end
end
