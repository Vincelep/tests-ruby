def translate (a)
    vowels = %w{a e i o u}
    a.gsub(/(\A|\s)\w+/) do |str|
            str.strip!
        while not vowels.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
            str += str[0]
            str = str[1..-1]
        end
        str  = ' ' + str + 'ay'
    end.strip
end


=begin
	
# 2 eme solution 	
def translate(word)
	word = word.split(" ")
	temp = []
	for i in 0..word.length-1
		temp = word[i]
		if temp[0] == "a" || temp[0] == "e" || temp[0] == "i" || temp[0] == "o"
			temp =  temp + "ay"
		elsif temp[0] == "q" && temp[1] == "u"
			temp = temp[2..temp.length-1] + temp[0..1] + "ay"	
		else
			for j in 0..temp.length-1
				if temp[j] == "a" || temp[j] == "e" || temp[j] == "i" || temp[j] == "o"
					temp =  temp[j..temp.length-1] + temp[0..j-1] + "ay"
					break
				end
			end
		end
		word[i] = temp
	end
	word.join(" ")
end
	
=end