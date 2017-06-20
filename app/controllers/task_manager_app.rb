require_relative '../models/tasks.rb'

class TaskManagerApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    erb :dashboard
  end

  get '/tasks' do
    @tasks = Tasks.all
    erb :index
  end

  get '/tasks/new' do
    erb :new
  end

  post '/tasks' do
    task = Tasks.new(params[:task])
    task.save
    redirect '/tasks'
  end

  get '/tasks/:id' do |id|
    @task = Tasks.find(id.to_i)
    erb :show
  end
end
