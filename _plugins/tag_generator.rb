Jekyll::Hooks.register :posts, :post_write do |post|
  next unless post.path.include?("_posts/")

  all_existing_tags = Dir.entries("_tags")
    .map { |t| t.match(/(.*).md/) }
    .compact.map { |m| m[1] }

  tags = post.data['tags'].reject { |t| t.empty? }
  tags.each do |tag|
    File.open("_tags/#{tag}.md", "wb") do |file|
    file << "---\nlayout: tag\ntag: #{tag}\n---\n"
    end if !all_existing_tags.include?(tag)
  end
end
