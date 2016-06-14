class ArticlesController < ApplicationController

 require 'open-uri'
  def index
    articles_json = open("https://script.google.com/macros/s/AKfycbwmXKhtyX_IGhHr0jCJ4EKNEN81sl4R44ZY67dIZSrurVoYml3b/exec").read
    @articles = JSON.parse(articles_json)
  end
def show
    articles_json = open("https://script.google.com/macros/s/AKfycbwmXKhtyX_IGhHr0jCJ4EKNEN81sl4R44ZY67dIZSrurVoYml3b/exec").read
    articles_hash = JSON.parse(articles_json)
    @article = articles_hash['results'][params[:id].to_i - 1]
    
end

 
  def new
    
  end

  # GET /collections/1/edit
  def edit
    articles_json = open("https://script.google.com/macros/s/AKfycbwmXKhtyX_IGhHr0jCJ4EKNEN81sl4R44ZY67dIZSrurVoYml3b/exec").read
    articles_hash = JSON.parse(articles_json)
    @article = articles_hash['results'][params[:id].to_i - 1]
  end

  # POST /collections
  # POST /collections.json
  def create
  
  end 

  # PATCH/PUT /collections/1
  # PATCH/PUT /collections/1.json
  def update
    
  end

  def show
    articles_json = open("https://script.google.com/macros/s/AKfycbwmXKhtyX_IGhHr0jCJ4EKNEN81sl4R44ZY67dIZSrurVoYml3b/exec").read
    articles_hash = JSON.parse(articles_json)
    @article = articles_hash['results'][params[:id].to_i - 1]  
  end


end
