#write your code here
def translate(v)
  vowels = "aeiouy".split("")
  consonants = "bcdfghjklmnpqrstvwxz".split("")
  vowelIndex = 100
  if vowels.include? v[0]
    puts "Starts with Vowel"
    "#{v}ay"
  else
    vowels.each do |i|
      puts "Iterating through letter #{i}"
      puts "Vowel Index for #{i} = " + v.index("#{i}").to_s
      next if v.index("#{i}").nil?
      if v.index("#{i}") < vowelIndex
        vowelIndex = v.index("#{i}")
        puts "New Index = " + vowelIndex.to_s
      end
    end
    puts "Final Vowel Index = " + vowelIndex.to_s
    if vowelIndex == 1
      "#{v[1..-1]}#{v[0]}ay"
    else
      "#{v[vowelIndex..-1]}#{v[0..(vowelIndex-1)]}ay"
    end
  end
end
