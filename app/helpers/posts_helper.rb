module PostsHelper

  def status
    if self.published 
      raw "<span class='success label'>Published</span>"
    else
      raw "<span class='secondary label'>Draft</span>"
    end
  end 
  
  
end
