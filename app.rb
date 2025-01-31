require './models/init.rb'


class App < Sinatra::Base
  get '/' do
    erb :hello_template
  end

  get "/hello/:name" do
   @name = params[:name]
   
   erb :hello_template
  end

  post "/careers" do
    career = Career.new(name: params[:name])

    career.save
    
    redirect "/careers"
  end

  get '/careers' do
    @careers = Career.all

    erb :careers_index
  end

  post "/posts" do
    request.body.rewind 
    data = JSON.parse request.body.read
    post = Post.new(description: data['desc'])
    if post.save
      [201, { 'Location' => "posts/#{post.id}" }, 'CREATED']
    else
      [500, {}, 'Internal Server Error']
    end
  end

  get '/careers/:id' do
    "Carrera"
  end

  get '/posts' do
    p = Post.where(id: 1).last
    p.description
  end

  get '/questions' do
    @questions = Question.all
    erb :response_index
  end

  post '/questions' do
    questions = Question.new(name: params[:name])

    if questions.save
      [201, {'Location' => "careers/#{career.id}" },'CREATED']
    else
      [500,{},'Internal Server Error']
    end
  end

  get '/surveys' do
    @survey = Survey.new(username: params[:username])

    erb :surveys_index
  end

  post "/surveys" do
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
      response = Response.new(survey_id: @survey.id, question_id: question_id,choice_id: params[:"#{question_id}"])
      response.save
    end
    
    table = {}

    for career in Career.all
      table[career.id] = 0
    end
      
    for response in @survey.responses
      choice = Choice.find(id: response.choice_id)
      for outcome in choice.outcomes
        table[outcome.career_id] += 1
      end
    end

    career = table.key(table.values.max)
    @career = Career.find(id: career)

    @survey.update(career_id: @career.id)
    
    erb :outcomes_index
  end

end

