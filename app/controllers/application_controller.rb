# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :user_signed_in?

  private

  def sign_in(user)
    cookies.signed.permanent[:signin] = { value: user.token, httponly: true, same_site: :lax }
  end

  def user_signed_in?
    return false if cookies.signed[:signin].blank?

    @user_signed_in ||= User.exists?(token: cookies.signed[:signin])
  end

  def authenticate_user!
    redirect_to new_session_path unless user_signed_in?
  end
end
