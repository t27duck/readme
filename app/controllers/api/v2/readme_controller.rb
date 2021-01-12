class Api::V2::ReadmeController < ApplicationController
  def index
    @entries = Entry.order(:id)
    @links = Link.order(:link_type)
    @last_updated = (@entries.maximum(:updated_at)&.to_date || Time.now.to_date)

    respond_to do |format|
      format.json do
        render json: {
          readme: {
            lastUpdated: @last_updated,
            information: @entries.pluck(:content),
            links: @links.map { |l| { type: l.link_type, url: l.url } }
          }
        }
      end
      format.pdf { render pdf: "readme" }
      format.xml { }
      format.html { }
    end
  end
end
