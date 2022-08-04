# build_arrays.rb
require_relative "./common"

ARRAY_SIZE = 1_000_000

times = ARGV.first.to_i

# The following will increase to begin with - even though the array is getting created and binned
# It's not getting binned until a few large arrays have been created

print_usage(0)
(1..times).each do |n|
  foo = []
  ARRAY_SIZE.times { foo << {some: "stuff"} }

  print_usage(n)
end