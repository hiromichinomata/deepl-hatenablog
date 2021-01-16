require 'hatenablog'

Hatenablog::Client.create do |blog|
  puts blog.title
  puts blog.author_name
end
