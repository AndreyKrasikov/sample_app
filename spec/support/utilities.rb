def full_title(page_title)
  base_tittle = "Ruby on Rails Tutorial Sample App"
  if page_title.empty?
    base_tittle
  else
    "#{base_tittle} | #{page_title}"
  end

end