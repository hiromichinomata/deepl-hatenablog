require 'hatenablog'

Hatenablog::Client.create do |blog|
  i = 0
  blog.entries.each do |entry|
    break if i > 0
    puts '# content'
    puts entry.content
    puts '# id'
    puts entry.id
    puts '# uri'
    puts entry.uri
    puts '# edit_uri'
    puts entry.edit_uri
    puts '# author_name'
    puts entry.author_name
    puts '# title'
    puts entry.title             #=> 'Example Title'
    puts '# content'
    puts entry.content           #=> 'This is the **example** entry.'
    puts '# formatted_content'
    puts entry.formatted_content #=> '<p>This is the <strong>example</strong> entry.</p>'
    puts '# draft'
    puts entry.draft             #=> 'yes'
    puts '# categories'
    puts entry.categories        #=> ['Ruby', 'Rails']
    puts '# updated_at'
    puts entry.updated           # Updated datetime

    i += 1
  end
  puts '# categories'
  puts blog.categories
end
