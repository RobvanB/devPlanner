def spec_full_title(page_title)
  base_title = "Dev Planner"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end