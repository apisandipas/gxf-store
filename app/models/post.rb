class Post < ActiveRecord::Base
  attr_accessible :body, :published, :title, :permalink

  validates_uniqueness_of :permalink, :title
  validates_presence_of :title

  scope :pub, where(published: true).order('created_at DESC')

  before_create do |post|
    post.permalink = post.title.slugify
  end


  def to_param
    permalink
  end
    
   

end
