class UserMailer < ApplicationMailer
	 default :from => "chris.lam.unt@gmail.com"
  
  def proposal_confirmation(user)
    @user = Proposal.user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Proposal Submitted")
  end
end
