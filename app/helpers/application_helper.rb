module ApplicationHelper

  def title(page_title)
    content_for(:title) { "GoodxFortune Clothing - #{page_title}" }
  end

  def flash_class(level)
    case level
    when :notice then "success"
    when :error then "alert"
    when :alert then ""
    end
  end

end