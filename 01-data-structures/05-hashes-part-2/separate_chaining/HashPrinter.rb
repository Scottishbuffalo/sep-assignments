 class HashPrinter
   def hash_printer(hash)
     loadFactor = hash.compact.length / hash.length
     puts "Load Factor: #{loadFactor}"
     hash.compact.each_with_index do |item, index|
       puts "Index: #{index}, Value: #{item}"
     end
   end
 end
