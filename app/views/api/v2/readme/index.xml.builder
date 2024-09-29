# frozen_string_literal: true

xml.instruct!
xml.readme do
  xml.meta do
    xml.lastUpdated @last_updated.to_fs(:long_ordinal)
    xml.source @source
    xml.homepage @homepage
  end
  xml.quickInfo do
    @entries.each do |entry|
      xml.entry entry.content
    end
  end
  xml.detailedInfo do
    @user_manual_headings.each do |user_manual_heading|
      xml.info do
        xml.heading user_manual_heading.content
        user_manual_heading.user_manual_entries.each do |entry|
          xml.entry entry.content
        end
      end
    end
  end
  xml.links do
    @links.each do |link|
      xml.link do
        xml.type link.link_type
        xml.url link.url
      end
    end
  end
end
