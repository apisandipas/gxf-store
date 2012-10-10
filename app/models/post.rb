class Post < ActiveRecord::Base
  attr_accessible :body, :published, :title


  before_create do |post|
    post.slug = post.title.slugify
  end

  def is_published?
    self.published ? "true" : "false"
  end
    
end
