module ApplicationHelper
  # page_title = '' 表示提供一个默认值，默认值为空
  def full_title(page_title = '')
    base_title = "百助网络订餐系统"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
