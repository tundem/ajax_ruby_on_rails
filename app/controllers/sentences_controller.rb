class SentencesController < ApplicationController
  def index
  	@sentences = Sentence.all
  	@sentence = Sentence.new
  end

  def show
  	@sentence = Sentence.find_by_id( params[:id])

  	render json: @sentence
  end
  
  def create
  	

  	@sentence = Sentence.new(params.require(:sentence).permit(:body))
  	if @sentence.save
  	  	@sentence = Sentence.new
  	else

	end

  	@sentences = Sentence.all
  	render "index"
  end
end
