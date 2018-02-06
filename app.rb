require "sinatra"
require_relative "config/application"

set :bind, '0.0.0.0'  # bind to all interfaces
set :views, File.join(File.dirname(__FILE__), "app/views")

get '/' do
  redirect '/projects'
end

get '/projects' do
  @projects = Project.all.order(:name)
  erb :'projects/index'
end

get '/projects/:id' do
  @project = Project.find(params[:id])
  erb :'projects/show'
end
