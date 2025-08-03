# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.take

    if user&.authenticate(params[:password])
      sign_in(user)
      redirect_to root_path
    else
      flash.now.alert = "Incorrect password."
      render :new, status: :unprocessable_content
    end
  end

  def destroy
    cookies.delete(:signin)
    reset_session
    redirect_to root_path, status: :see_other
  end
end
