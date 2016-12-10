module ProposalsHelper
	def options_for_status
		['Pending', 'Approved', 'Rejected', 'Completed']
	end
	def options_for_course
		['TECM 3100: Commerical Pubs','TECM 3200: Web Design', 'TECM 3550: Content Strategy', 'TECM 4180: Advanced Tech Comm','TECM 4190: Editing','TECM 4250: Manuals and Procedures','TECM 4700: Writing in the Sciences', 'TECM 4800: Content Analysis', 'TECM 5195: Graduate Editing', 'TECM 5280: Graduate Design', 'TECM 5290: Technical Training', 'OTHER']
	end

	def options_for_time
		['1 week', '2 weeks', '3 weeks', '4 weeks', '5 weeks', '6 weeks', '7 weeks', '8 weeks', '9 weeks', '10 weeks', '11 weeks', '12 weeks', '13 weeks', '14 weeks', '15 weeks', 'More than one semester']
	end

	def options_for_semester_id
		['Spring 2017', 'Summer 2017', 'Fall 2017', 'Spring 2018', 'Fall 2018']
	end

	def options_for_subject
		['Editing', 'Design','Grant/proposal writing', 'Manuals or Procedures', 'Marketing Materials', 'Research Study and Report', 'Web Design/Development', 'UX/Usability', 'Video', 'Other']
	end
end