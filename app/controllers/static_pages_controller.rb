class StaticPagesController < ApplicationController
  def home
  end

  def about
  end
  def legal
  end
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
