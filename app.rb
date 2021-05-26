require './models/init.rb'

class App < Sinatra::Base
  get '/' do
    "Hello World"
  end

  get "/hello/:name" do
   @name = params[:name]
   erb :hello_template
   #erb  :test/test
  end

  post "/careers" do
    career = Career.new(name: params[:name])

    if career.save
      [201, {'Location' => "careers/#{career.id}" },'CREATED']
    else
      [500,{},'Internal Server Error']
    end
  end

  post "/posts" do
    request.body.rewind  # in case someone already read it
    data = JSON.parse request.body.read
    post = Post.new(description: data['desc'])
    if post.save
      [201, { 'Location' => "posts/#{post.id}" }, 'CREATED']
    else
      [500, {}, 'Internal Server Error']
    end
  end

  get '/careers' do
    @careers = Career.all

    erb :careers_index
  end

  get '/careers/:id' do
    "Carrera"
  end

  post "/posts" do
    request.body.rewind  # in case someone already read it
    data = JSON.parse request.body.read
    post = Post.new(description: data['desc'])
    if post.save
      [201, { 'Location' => "posts/#{post.id}" }, 'CREATED']
    else
      [500, {}, 'Internal Server Error']
    end
  end

  get '/posts' do
    p = Post.where(id: 1).last
    p.description
  end


  post "/questions" do
    question = Question.new(params[:question])

    if question.save
      [201, {'Location' => "questions/#{question.id}" },'CREATED']
    else
      [500,{},'Internal Server Error']
    end
  end

  get '/questions' do
    @questions = Question.all

    erb :questions_index
  end

  get '/surveys' do
    @questions = Question.all

    erb :surveys_index
  end

end

