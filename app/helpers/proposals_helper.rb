module ProposalsHelper
	def options_for_status
		['Pending', 'Approved', 'Rejected', 'Completed']
	
end
	def options_for_course
		['TECM 3000', 'TECM 3100','TECM 3200','TECM 4100','TECM 4180','TECM 4190','TECM 4200','TECM 4250','TECM 4700', 'None']
	end

	def options_for_time
		['1 week', '2 weeks', '3 weeks', '4 weeks', '5 weeks', '6 weeks', '7 weeks', '8 weeks', '9 weeks', '10 weeks', '11 weeks', '12 weeks', '13 weeks', '14 weeks', '15 weeks', 'More than one semester']
	end

	def options_for_semester_id
		['Spring 2016', 'Summer 106', 'Fall 2017', 'Spring 2017', 'Summer 2017']
	end

	def options_for_subject
		['Editing', 'General Design','Grant/proposal writing', 'Manuals or Procedures', 'Marketing Materials', 'Research Study and Report', 'Web Design/Development','Other']
	end
end