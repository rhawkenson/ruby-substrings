#Subproblems to solve:
  #create a dictionary
  #get a word/phrase from the user 
  #convert each word to an array element
  #run the word through the dictionary; check if the dictionary contains that word
  #return a hash with all instances as keys
  #include in hash a count of how many times the instance occured as its value
 
 
#create a dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#get a word/phrase from the user
puts "Enter a word or phrase:"
input_string = gets.chomp

#convert each word to an array element
input_arr = input_string.split

#run the word through the dictionary; check if the dictionary contains that word
def final(arr, dictionary)
  counter = Hash.new
  arr.each do |word|
    if dictionary.include? word
     #return a hash with all instances as keys
     #include in hash a count of how many times the instance occured as its value
      if counter.has_key? word
        counter[word] += 1
      else
        counter[word] = 1
      end
    end
  end
  puts counter
  return counter
end


final(input_arr, dictionary)
