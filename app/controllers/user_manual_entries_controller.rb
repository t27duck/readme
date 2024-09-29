# frozen_string_literal: true

class UserManualEntriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_manual_heading
  before_action :set_user_manual_entry, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @user_manual_entry = @user_manual_heading.user_manual_entries.new
  end

  def edit
  end

  def create
    @user_manual_entry = @user_manual_heading.user_manual_entries.new(user_manual_entry_params)

    if @user_manual_entry.save
      redirect_to [@user_manual_heading, @user_manual_entry], notice: "User manual entry was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @user_manual_entry.update(user_manual_entry_params)
      redirect_to [@user_manual_heading, @user_manual_entry],
                  notice: "User manual entry was successfully updated.",
                  status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user_manual_entry.destroy!
    redirect_to user_manual_heading_path(@user_manual_heading),
                notice: "User manual entry was successfully destroyed.",
                status: :see_other
  end

  private

  def set_user_manual_heading
    @user_manual_heading = UserManualHeading.find(params.expect(:user_manual_heading_id))
  end

  def set_user_manual_entry
    @user_manual_entry = @user_manual_heading.user_manual_entries.find(params.expect(:id))
  end

  def user_manual_entry_params
    params.expect(user_manual_entry: [:content])
  end
end
