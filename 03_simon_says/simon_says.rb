#write your code here
def echo(v)
  "#{v}"
end

def shout(v)
  "#{v}".upcase
end

def repeat(v, n=2)
  ("#{v} " * n).rstrip
end

def start_of_word(v, n)
  if n == 1
    v[n-1]
  else
    v[0..(n-1)]
  end
end

def first_word(v)
  v.split[0]
end

def titleize(v)
  words = v.split
  words[0].capitalize!
  words.map do |i|
    if ['and', 'but', 'or', 'over', 'the'].include? i
      i
    else
      i.capitalize!
    end
  end
  words.join(" ")
end
