#write your code here
def translate(x)
  vowels = "aeiouy".split("")

  y = x.split(" ")
  y.map! do |v|
    vowelIndex = 100
    if vowels.include? v[0]
      if y[1].nil?
        return "#{v}ay"
      end
      "#{v}ay"
    else
      vowels.each do |i|
        next if v.index("#{i}").nil?
        if v.index("#{i}") < vowelIndex
          vowelIndex = v.index("#{i}")
        end
      end
      if vowelIndex == 1
        if y[1].nil?
          if v[0..1] == "qu"
            return "#{v[2..-1]}#{v[0..1]}ay"
          else
            "#{v[1..-1]}#{v[0]}ay"
          end
        else
          if v[0..1] == "qu"
            "#{v[2..-1]}#{v[0..1]}ay"
          else
            "#{v[1..-1]}#{v[0]}ay"
          end
        end
      else
        if y[1].nil?
          if v[(vowelIndex-1)..vowelIndex] == "qu"
            return "#{v[(vowelIndex+1)..-1]}#{v[0..vowelIndex]}ay"
          else
            "#{v[vowelIndex..-1]}#{v[0..(vowelIndex-1)]}ay"
          end
        else
          if v[(vowelIndex-1)..vowelIndex] == "qu"
            "#{v[(vowelIndex+1)..-1]}#{v[0..vowelIndex]}ay"
          else
            "#{v[vowelIndex..-1]}#{v[0..(vowelIndex-1)]}ay"
          end
        end
      end
    end
  end
  y.join(" ")
end
