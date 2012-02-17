module ApplicationHelper

  # Returns the full title on a per-page basis
  def full_title(page_title)
    base_title = "I wrote this and got in"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def logo
    image_tag("logo.png", alt: "I wrote this and got in", class: "round")
  end

end
