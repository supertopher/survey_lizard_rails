class SurveysController < ApplicationController
  def index
    @survey = Survey.new
    @survey.questions.build
    3.times do
      @survey.questions.build
    end
  end

  # def new
  #   @survey = Survey.new
  # end


  def create
    puts "8" * 90
    ap params
    @survey = Survey.create(params[:survey])
puts "10" * 7
    ap @survey
    # @question = Question.create(params[:questions])
    # @question.survey = @survey
    # @survey.user = current_user
    @survey.save
    # @question.save!
    redirect_to root_path
  end
end

