module ApplicationHelper
  def title(page_title)
    content_for(:title) { "GoodxFortune Clothing - #{page_title}" }
  end
end