class SentencesController < ApplicationController
  def index
  	@sentences = Sentence.all
  end

  def show
  	@sentence = Sentence.find_by_id( params[:id])

  	render json: @sentence
  end
end
