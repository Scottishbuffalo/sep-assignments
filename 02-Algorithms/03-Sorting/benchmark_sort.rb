require 'benchmark'
require_relative 'bucket_sort'
require_relative 'heap_sort'
require_relative 'quick_sort'



test_array = (0..50).to_a.shuffle!


Benchmark.bm(100) do |x|
  x.report("bucket sort") do
    bucket_sort(test_array)
  end
   x.report("heap sort") do
     heap_sort(test_array)
   end
   x.report("quick sort") do
     q_sort(test_array)
   end
end
