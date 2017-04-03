def hash_printer
   loadFactor = @items.compact.length / @size
   puts "Load Factor: #{loadFactor}"
   @items.compact.each_with_index do |item, index|
     puts "Index: #{index}, Value: #{item}"
   end
 end
