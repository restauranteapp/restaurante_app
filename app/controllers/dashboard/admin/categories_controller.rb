class Dashboard::Admin::CategoriesController < ApplicationController
  layout 'layouts/dashboard'
  def index
    @categories = Category.all
  end
end
