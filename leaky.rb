GC.disable

stuff = []

loop do
  1000.times {stuff << "A" + "B" + "C"}
  puts "The stuff array is #{stuff.size} items long"

  GC.start
  puts "There are #{GC.stat(:heap_live_slots)} live objects"
  pp ObjectSpace.count_objects

  sleep 1
end