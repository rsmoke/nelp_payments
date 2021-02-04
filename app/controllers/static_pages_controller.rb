class StaticPagesController < ApplicationController
  def home
    redirect_to all_payments_path if user_signed_in?
  end

  def about
  end

  def privacy
  end

  def terms
  end
end
