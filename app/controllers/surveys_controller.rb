class SurveysController < ApplicationController

  def index
    @survey = Survey.new
  end

  def create
    ap params
    @survey = Survey.create(params[:survey])
    @question = Question.create(params[:questions])
    @question.survey = @survey
    @question.save!
    redirect_to root_path
  end
end

