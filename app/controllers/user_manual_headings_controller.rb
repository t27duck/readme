# frozen_string_literal: true

class UserManualHeadingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_manual_heading, only: [:show, :edit, :update, :destroy]

  def index
    @user_manual_headings = UserManualHeading.all
  end

  def show
  end

  def new
    @user_manual_heading = UserManualHeading.new
  end

  def edit
  end

  def create
    @user_manual_heading = UserManualHeading.new(user_manual_heading_params)

    if @user_manual_heading.save
      redirect_to @user_manual_heading, notice: "User manual heading was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @user_manual_heading.update(user_manual_heading_params)
      redirect_to @user_manual_heading, notice: "User manual heading was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user_manual_heading.destroy!
    redirect_to user_manual_headings_path, notice: "User manual heading was successfully destroyed.", status: :see_other
  end

  private

  def set_user_manual_heading
    @user_manual_heading = UserManualHeading.find(params.expect(:id))
  end

  def user_manual_heading_params
    params.expect(user_manual_heading: [:content])
  end
end
