class PagesController < ApplicationController
  def home
  end

  def about
  end

  def images
  end

  def features
    
  end

  def show
    @feature = Feature.find(params[:id])
    @text = @feature.text
  end
  
end
