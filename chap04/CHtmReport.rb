#requirements
begin
	require		'ACReport'
rescue  LoadError ;
end

#class definition
class	CQAHtmReport < ACReport
	#class vars

	def	outputStart()
		puts('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">')
		puts('<HTML>')
	end

	def	outputHead(aTitle,aAuthor,aKeys,aDesc)
		puts('  <HEAD>')
		puts("    <TITLE>#{aTitle}</TITLE>")
		puts("    <META NAME=\"Generator\" CONTENT=\"RUBY\">")
		puts("    <META NAME=\"Author\" CONTENT=\"#{aAuthor}\">")
		puts("    <META NAME=\"Keywords\" CONTENT=\"#{aKeys}\">")
		puts("    <META NAME=\"Description\" CONTENT=\"#{aDesc}\">")
		puts('  </HEAD>')
	end

	def	outputBodyStart(bgcolorC="#4863A0",txtC="#748FAB",linkC="#FF0000",vlinkC="#800000",alinkC="#FF00FF",bkgC="#00FFFF")
		puts("  <BODY BGCOLOR=\"#{bgcolorC}\" TEXT=\"#{txtC}\" LINK=\"#{linkC}\" VLINK=\"#{vlinkC}\" ALINK=\"#{alinkC}\" BACKGROUND=\"#{bkgC}\">")
	end

	def	outputLine(line)
		puts("  <P>#{line}</P>")
	end

	def	outputBodyEnd()
		puts('  </BODY>')
	end

	def	outputEnd()
		puts('  </HTML>')
	end

end