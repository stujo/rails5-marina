module ApplicationHelper
  def meta_title
    if @page_title
      "#{@page_title} | Marina Athena"
    else
      "Marina Athena"
    end
  end

  def page_heading
    if @page_title
      "<h1 class=\"page-heading\">#{@page_title}</h1>"
    else
      ""
    end
  end
end
