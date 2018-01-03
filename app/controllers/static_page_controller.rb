class StaticPageController < ApplicationController
  def home
  end

  def query
    result = MyappSchema.execute params[:query]
    render json: result
  end
end
