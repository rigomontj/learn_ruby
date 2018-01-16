def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  somme = 0
  for i in 0...array.length
  	somme = somme + array[i].to_i
  end
  return somme
end
