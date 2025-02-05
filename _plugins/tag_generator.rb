Jekyll::Hooks.register :posts, :post_write do |post|
  next unless post.path.include?("_posts/")

  all_existing_tags = Dir.entries("_tags")
    .map { |t| t.match(/(.*).md/) }
    .compact.map { |m| m[1] }

  tags = post.data['tags'].reject { |t| t.empty? }
  tags.each do |tag|
    safe_tag = tag.downcase.gsub(" ", "")
    generate_tag_file(tag) if !all_existing_tags.include?(safe_tag)
  end
end
