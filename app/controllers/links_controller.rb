# frozen_string_literal: true

class LinksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  def index
    @links = Link.all
  end

  def show
  end

  def new
    @link = Link.new
  end

  def edit
  end

  def create
    @link = Link.new(link_params)

    if @link.save
      redirect_to @link, notice: "Link was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @link.update(link_params)
      redirect_to @link, notice: "Link was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @link.destroy!
    redirect_to links_path, notice: "Link was successfully destroyed.", status: :see_other
  end

  private

  def set_link
    @link = Link.find(params.expect(:id))
  end

  def link_params
    params.expect(link: [:link_type, :url])
  end
end
