#aeiou

def translate(msg)
  msg = msg.split(" ")
  i = 0
  j = 0
  for i in 0...(msg.length)
    msg[i] = msg[i].split("")
    unless msg[i] == "a" || msg[i] == "e" || msg[i] == "i" || msg[i] == "o" || msg[i] == "u"
      until (msg[i][j] == "a" || msg[i][j] == "e" || msg[i][j] == "i" || msg[i][j] == "o" || msg[i][j] == "u")
        j = j + 1
	if msg[i][j-1] == "q" && msg[i][j] == "u"
		j = j + 1
	end
      end
      
      msg[i] = msg[i].rotate(j)
    end
    j = 0
    msg[i] << "ay"
  unless i == (msg.length - 1)
  	msg[i] << " "
  end	
  end
  msg = msg.flatten
  msg = msg.join("")
end

def perform
  translate("apple banana cherry eat pie three school quiet square the quick brown fox")
end

perform
