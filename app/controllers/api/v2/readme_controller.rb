class Api::V2::ReadmeController < ApplicationController
  def index
    @entries = Entry.order(:id)
    @links = Link.order(:link_type)
    @user_manual_headings = UserManualHeading.order(:id).includes(:user_manual_entries)
    @last_updated = [
      (@entries.maximum(:updated_at)&.to_date || Time.now.to_date),
      (@links.maximum(:updated_at)&.to_date || Time.now.to_date),
      (UserManualHeading.maximum(:updated_at)&.to_date || Time.now.to_date)
    ].max

    respond_to do |format|
      format.json do
        render json: {
          readme: {
            lastUpdated: @last_updated,
            summary: @entries.pluck(:content),
            detailedInformaion: @user_manual_headings.map { |heading| { heading: heading, entries: heading.user_manual_entries.map(&:content) } },
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
