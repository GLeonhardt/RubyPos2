require 'sinatra'
require 'json'
require_relative 'person/person'
require_relative 'metrics/lienar.rb'

class App < Sinatra::Base
    get '/' do 
        "Hello fuckers! this is a app.\n"
    end

    get '/frank-says' do
        "Put this shit in your pipe & smoke it!\n"
    end

    get '/person/:age/is_major' do
        content_type :json
        age = params[:age].to_i
        person = Person.new('fake name', age)
        {age: age, is_major: person.is_major? }.to_json
    end

    get 'metric/linear/:origin_type/:value/:dest_type'
        content_type :json
        origin = params[:origin_type]
        destiny = param[:dest_type]
        value = param[:value]
        
end