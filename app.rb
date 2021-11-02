require './models/init'

class App < Sinatra::Base
  get '/' do
    erb :hello_template
  end

  post '/careers' do
    career = Career.new(name: params[:name])
    career.save
    redirect '/careers'
  end

  get '/careers' do
    @careers = Career.all

    erb :careers_index
  end

  get '/questions' do
    @questions = Question.all
    erb :response_index
  end

  get '/surveys' do
    @survey = Survey.new(username: params[:username])

    erb :surveys_index
  end

  post '/surveys' do
    @user = Survey.new(username: params[:username])

    if @user.save
      @questions = Question.all
      erb :response_index

    else
      [500, {}, 'Internal Server Error']
    end
  end

  post '/responses' do
    @survey = Survey.find(id: params[:survey_id])

    params[:question_id].each do |question_id|
      Response.create(survey_id: @survey.id, question_id: question_id, choice_id: params[:"#{question_id}"])
    end

    career_id = Survey.searchSuitableCareer(@survey)
    @career = Career.find(id: career_id)

    @survey.update(career_id: @career_id)

    erb :outcomes_index
  end

  post '/quantities' do
    @career_id = Career.where(name: params['carrera']).first.id
    @date2 = Time.parse(params[:fecha2]) + 86_400
    @date1 = Time.parse(params[:fecha1])
    @count = Survey.where(Sequel.lit('created_at > ? AND created_at < ? AND career_id = ?', @date1, @date2,
                                     @career_id.to_i)).count
    @careers = Career.all
    @career = Career.find(name: params[:carrera])
    @initial_date = DateTime.iso8601(params[:fecha1])
    @final_date = DateTime.iso8601(params[:fecha2])

    erb :quantities_index
  end
end
