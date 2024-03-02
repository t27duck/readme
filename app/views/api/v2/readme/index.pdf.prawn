prawn_document do |pdf|
  pdf.text "T27DUCK'S README"
  pdf.stroke_horizontal_rule

  pdf.move_down 20

  pdf.text "Quick Info (TLDR)"
  pdf.move_down 10
  @entries.each do |entry|
    pdf.text entry.content
  end

  pdf.move_down 20
  pdf.stroke_horizontal_rule
  pdf.move_down 20

  @user_manual_headings.each do |user_manual_heading|
    pdf.text user_manual_heading.content
    user_manual_heading.user_manual_entries.each do |entry|
      pdf.text "- #{entry.content}"
    end
  end

  pdf.move_down 20
  pdf.stroke_horizontal_rule
  pdf.move_down 20

  pdf.text "Where to Find Me Online"
  pdf.move_down 10
  @links.each do |link|
    pdf.text "- #{link.link_type}: <link href='#{link.url}'>#{link.url}</link>", inline_format: true
  end


  pdf.move_down 20
  pdf.stroke_horizontal_rule
  pdf.move_down 20

  pdf.text "Meta"
  pdf.move_down 10
  pdf.text "Information Last Updated: #{@last_updated.to_formatted_s(:long_ordinal)}"
  pdf.text "Source Code: <link href='#{@source}'>#{@source}</link>", inline_format: true
  pdf.text "Homepage: <link href='#{@homepage}'>#{@homepage}</link>", inline_format: true
end
