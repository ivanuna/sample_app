module ApplicationHelper

# Returns {string} the full title on a per-page basis.
# @param: page_title{string} or nil
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
end
