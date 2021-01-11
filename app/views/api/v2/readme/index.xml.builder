xml.instruct!
xml.readme do
  xml.lastUpdated @last_updated.to_s(:long_ordinal)
  xml.information do
    @entries.each do |entry|
      xml.entry entry.content
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
