require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @regular=params[:name]
    @reversed=@regular.reverse
    @reversed
  end

  get '/square/:number' do
    i=params[:number].to_i
    "#{i*i}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phr = params[:phrase]

    arr=[]
    num.times do
       arr << phr
    end
    arr2 = arr.join(" ")
    arr2
    # binding.pry
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]

    arr = w1+" "+w2+" "+w3+" "+w4+" "+w5+"."
  end
  
  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @op = params[:operation]

    erb :operation

    # case op
    # when "add"
    #   return "#{num1+num2}".to_i
    # when "subtract"
    #   return "#{num1-num2}".to_i
    # when "multiply"
    #   return "#{num1*num2}".to_i
    # when "divide"
    #   return "#{num1/num2}".to_i
    # end

    # binding.pry
  end
end