# frozen_string_literal: true

class Api::V2::ReadmeController < ApplicationController
  def index # rubocop:disable Metrics/AbcSize
    @entries = Entry.order(:id)
    @links = Link.order(:link_type)
    @user_manual_headings = UserManualHeading.order(:id).includes(:user_manual_entries)
    @last_updated = [
      @entries.maximum(:updated_at)&.to_date || Time.zone.now.to_date,
      @links.maximum(:updated_at)&.to_date || Time.zone.now.to_date,
      UserManualHeading.maximum(:updated_at)&.to_date || Time.zone.now.to_date
    ].max
    @source = "https://github.com/t27duck/readme"
    @homepage = "https://readme.t27duck.com"

    respond_to do |format|
      format.json do
        render json: {
          readme: {
            quickInfo: @entries.pluck(:content),
            detailedInfo: @user_manual_headings.map do |heading|
              { heading: heading, entries: heading.user_manual_entries.map(&:content) }
            end,
            links: @links.map { |l| { type: l.link_type, url: l.url } },
            meta: { lastUpdated: @last_updated, source: @source, homepage: @homepage }
          }
        }
      end
      format.pdf
      format.xml
      format.html
    end
  end
end
