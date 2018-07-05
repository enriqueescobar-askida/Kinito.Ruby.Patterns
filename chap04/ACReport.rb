#requirements

#class definition
class	CReport
	#class vars

	def	initialize()
		@title	= ""
		@text	= ""
	end

	def	outputReport()
		outputStart()
		outputHead()
		outputBodyStart()
		for	line	in	@text
			outputLine(line)
		end
		outputBody()
		outputBodyEnd()
		outputEnd()
	end

	def	outputBody()
		@text.each	do	|line|
			outputLine(line)
		end
	end

	def	outputStart()
#		raise	'Called abstract method: outputStart()'
	end

	def	outputHead()
		outputLine(@title)
	end

	def	outputBodyStart()
#		raise	'Called abstract method: outputBodyStart()'
	end

	def	outputLine(line)
		raise	'Called abstract method: outputLine(line)'
	end

	def	outputBodyEnd()
#		raise	'Called abstract method: outputBodyEnd()'
	end

	def	outputEnd()
#		raise	'Called abstract method: outputEnd()'
	end

end