#!/usr/bin/env ruby
#
# Check for changed posts

Jekyll::Hooks.register :posts, :post_init do |post|

  commit_num = `git rev-list --count HEAD "#{post.path}"`

  if commit_num.to_i > 1
    last_mod_date = `git log -1 --pretty="%ad" --date=iso "#{post.path}"`
    post.data['last_modified_at'] = last_mod_date
  end

end
