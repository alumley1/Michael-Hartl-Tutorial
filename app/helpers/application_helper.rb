module ApplicationHelper
  
  def title
    # Return a title on a per-page basis
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    # Returns logo with associated hash options
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
end
