require 'benchmark'
require_relative 'poorly_written_ruby'
require_relative 'improving_complexity_one'
require_relative 'improving_complexity_two'
require_relative 'improving_complexity_three'

array1 = (1..250).to_a.shuffle!
array2 = (1..250).to_a.shuffle!
array3 = (1..250).to_a.shuffle!

array4 = (1..1000).to_a.shuffle!
array5 = (1..1000).to_a.shuffle!
array6 = (1..1000).to_a.shuffle!

array7 = (1..10000).to_a.shuffle!
array8 = (1..10000).to_a.shuffle!
array9 = (1..10000).to_a.shuffle!

array10 = (1..100000).to_a.shuffle!
array11 = (1..100000).to_a.shuffle!
array12 = (1..100000).to_a.shuffle!

Benchmark.bm(100) do |x|
  x.report('poorly written ruby 250:')  {poorly_written_ruby(array1, array2, array3)}
  x.report('poorly written ruby 1k:')  {poorly_written_ruby(array4, array5, array6)}
  x.report('poorly written ruby 10K:')  {poorly_written_ruby(array7, array8, array9)}
  x.report('poorly written ruby 100K:')  {poorly_written_ruby(array10, array11, array12)}
  x.report('well written ruby 250:')    {well_written_ruby(array1, array2, array3)}
  x.report('well written ruby 1k:')    {well_written_ruby(array4, array5, array6)}
  x.report('well written ruby 10K:')    {well_written_ruby(array7, array8, array9)}
  x.report('well written ruby 100K:')  {best_written_ruby(array10, array11, array12)}
  x.report('better written ruby 250:')  {better_written_ruby(array1, array2, array3)}
  x.report('better written ruby 1k:')  {better_written_ruby(array4, array5, array6)}
  x.report('better written ruby 10K:')  {better_written_ruby(array7, array8, array9)}
  x.report('better written ruby 100K:')  {better_written_ruby(array10, array11, array12)}
  x.report('best written ruby 250:')    {best_written_ruby(array1, array2, array3)}
  x.report('best written ruby 1k:')    {best_written_ruby(array4, array5, array6)}
  x.report('best written ruby 10K:')    {best_written_ruby(array7, array8, array9)}
  x.report('best written ruby 100K:')  {best_written_ruby(array10, array11, array12)}
end
