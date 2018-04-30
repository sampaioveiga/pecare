module ApplicationHelper

  def full_title(page_title = '')
    base_title = "PeCARE"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def has_title(user)
    unless user.title.nil?
      user.title
    end
  end
  
end
