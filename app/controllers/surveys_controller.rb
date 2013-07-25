class SurveysController < ApplicationController
  def index
    @survey = Survey.new
    question = @survey.questions.build
    question.choices.build
  end

  # def new
  #   @survey = Survey.new
  # end


  def create
    puts "8" * 90
    @survey = Survey.create(params[:survey])
    redirect_to root_path
  end
end
