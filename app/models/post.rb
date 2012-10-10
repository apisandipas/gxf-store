class Post < ActiveRecord::Base
  attr_accessible :body, :published, :title

  default_scope :order => 'created_at DESC'

  before_create do |post|
    post.slug = post.title.slugify
  end

  def is_published?
    self.published ? "true" : "false"
  end
    
end
