require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    @square_number = @number.to_i * @number.to_i 
    "#{@square_number.to_s}"
  end

  get '/say/:number/:phrase' do
    repeat = ''
    params[:number].to_i.times do
      repeat += params[:phrase]
    end
    repeat 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    #add, subtract, multiply or divide
    if params[:operation] == 'add'
      answer = params[:number1].to_i + params[:number2].to_i
      answer.to_s
    elsif params[:operation] == 'subtract'
      answer = params[:number1].to_i - params[:number2].to_i
      answer.to_s
    elsif params[:operation] == 'multiply'
      answer = params[:number1].to_i * params[:number2].to_i
      answer.to_s
    elsif params[:operation] == 'divide'
      answer = params[:number1].to_i / params[:number2].to_i
      answer.to_s
    else
      "boo"
    end
  end

end