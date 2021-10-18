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

    # MOLI

    @today = Time.now
    @array = Quantity.all.select{|q| @career.id == q.career_id && @today.day == q.date.day && @today.month == q.date.month && @today.year == q.date.year}

    if @array.empty?
      Quantity.create(career_id: @career.id, date: @today, cant: 1)
    else 
      @new_cant = @array.first.cant + 1
      @array.first.destroy
      Quantity.create(career_id: @career.id, date: @today, cant: @new_cant)
    end
    
    erb :outcomes_index
  end

  post "/quantities" do
    @career = Career.find(name: (params[:carrera]))
    @initialDate = DateTime.iso8601(params[:fecha1])
    @auxDate = Time.parse(@initialDate.to_s)
    @finalDate = DateTime.iso8601(params[:fecha2])
    days = (@finalDate - @initialDate).to_i
    quantities = Quantity.all
    @careers = Career.all
    @cant = 0

    for c in 0..days do 
      arr = quantities.select{|q| q.date.year == @auxDate.year && q.date.month == @auxDate.month && q.date.day == @auxDate.day && q.career_id == @career.id}
      if arr.empty? 
        c = 0
      else
        c = arr[0].cant
      end
      @cant += c   
      @auxDate = @auxDate + (86400)
    end

    erb :quantities_index
  end

end

