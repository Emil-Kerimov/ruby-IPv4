def is_IPv4?(ip)
  parts = ip.split('.')
  return false unless parts.length == 4

  parts.all? do |part|
    part.match?(/\A\d+\z/) && part.to_i.between?(0, 255) && !(part.size > 1 && part[0] == '0')
  end
end

if ARGV.empty?
  puts "No arguments"
else
  ip = ARGV[0]
  if is_IPv4?(ip)
    puts "Correct"
  else
    puts "Incorrect, or not a IPv4"
  end
end
