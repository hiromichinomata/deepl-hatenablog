require 'hatenablog'

Hatenablog::Client.create do |blog|
  entry_count = 0
  char_count = 0
  # FIXME: all_entries落ちる. custom domain unique?
  blog.entries.each do |entry|
    entry_count += 1
    char_count += entry.content.size
    char_count += entry.title.size
    puts entry.title
    sleep 1
  end
  puts "エントリー数: #{entry_count}"
  puts "文字数: #{char_count}"
end
