require 'sinatra'
require 'json'
require_relative 'person/person'
require_relative 'metrics/linear.rb'

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

    get '/metrics/linear/:origin_type/:value/:dest_type' do
        content_type :json
        origin = params[:origin_type]
        destiny = params[:dest_type]
        value = params[:value].to_i
        linear = LinearMetric.new(value, origin)
        result = linear.send("to_#{destiny}")
        {valor: value, origem: origin, resultado:result, destino: destiny}.to_json
    end  
end