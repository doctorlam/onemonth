class Proposal < ActiveRecord::Base

	has_many :users
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	has_attached_file :document
	validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png image/pdf)
	validates_attachment_content_type :document, :content_type =>['application/pdf']
	has_many :claims, :dependent => :destroy

end
