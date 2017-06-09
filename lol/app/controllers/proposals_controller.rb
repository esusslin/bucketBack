class ProposalsController < ApplicationController

	def index

    	@proposals = Proposal.all

    	@proposals.each do |proposal|
    		p proposal
    	end
  	end

	def new 
		
	end

	 def show
       @proposal = Proposal.find(params[:id])
     end

	def create

     p "-------------------------------------"
    p params
    p "-------------------------------------"
    params[:user_id]
    p "-------------------------------------"
    @user = User.find(params[:user_id])
  		@proposal = @user.proposals.create(proposal_params)
      p "-------------------"
      p @proposal
      p "-------------------"

        @proposal.save
          p "fuck you too"
         redirect_to proposal_path(@proposal)
     
  end

  # def proposals
  #   @proposals = Proposal.all

  #   render json: @proposals
  # end

private
  def proposal_params
    params.require(:proposal).permit(:item, :price, :monthly_payments, :months, :user_id)
  end

end
