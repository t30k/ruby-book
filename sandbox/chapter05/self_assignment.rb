def self_assignment(limit)
  puts(limit ||= 10)
end

self_assignment(nil)
self_assignment(false)
self_assignment(10)
self_assignment(20)