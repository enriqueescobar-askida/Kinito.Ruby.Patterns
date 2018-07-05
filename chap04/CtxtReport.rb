#requirements
begin
	require		'ACReport'
rescue  LoadError ;
end

#class definition
class	CTxtReport < ACReport
	#class vars

	def	outputStart()
	end

	def	outputHead()
		puts("**** #{@title} ****")
		puts
	end

	def	outputBodyStart()
	end

	def	outputLine(line)
		puts(line)
	end

	def	outputBodyEnd()
	end

	def	outputEnd()
	end

end