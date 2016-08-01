module ApplicationHelper
  def meta_title
    if @page_title
      "#{@page_title} | Marina Athena"
    else
      "Marina Athena"
    end
  end
end
