def consecutive_substrings(string)
  # type your code in here
  subs = []

  string.split('').each_with_index do |char, idx|
    subs << char
    fragment = char

    string[idx + 1..-1].split('').each_with_index do |letter|
      fragment += letter
      subs << fragment
    end
  end

  subs
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: ['a', 'ab', 'abc', 'b', 'bc', 'c']"
  print "=> " 
  print consecutive_substrings('abc')

  puts

  puts "Expecting: ['a']"
  print "=> " 
  print consecutive_substrings('a')

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
