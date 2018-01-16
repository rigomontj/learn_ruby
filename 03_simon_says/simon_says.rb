def echo(msg)
  msg
end

def shout(msg)
  msg.upcase
end

def repeat(msg, num=2)
  phrase = msg
  (num - 1).times do
        phrase = phrase + " " + msg
  end
  return phrase
end

def start_of_word(msg, num)
  msg = msg.split("")
  result = ""
  for i in 0..(num-1)
    result = result + msg[i]
  end
  result
end

def first_word(msg)
  msg = msg.split(" ")
  return msg[0]
end

def titleize(msg)
  msg = msg.split("")
  msg[0] = msg[0].capitalize
  for i in 1..(msg.length)
  	if msg[i-1] == " "
	  unless ((msg[i] == "a" && msg[i+1] == "n" && msg[i+2] == "d") or (msg[i] == "t" && msg[i+1] == "h" && msg[i+2] == "e") or (msg[i] == "o" && msg[i+1] == "v" && msg[i+2] == "e" && msg[i+3] == "r"))
		msg[i] = msg[i].capitalize
	  end
	end
  end
  return msg.join("")
end
