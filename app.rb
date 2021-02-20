require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num1 = params[:number].to_i
    num_s = @num1 ** 2
    num_s.to_s
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @phrase = params[:phrase]
    product = @phrase * @n 
    "#{product}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    phrase = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    phrase
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    @answer = ""
    if @operation == "add"
      @answer = (number1 + number2).to_s
    elsif @operation == "subtract"
      @answer = (number1 + number2).to_s
    elsif @operation == "multiply"
      @answer = (number1 * number2).to_s
    elsif
      @operation == "divide"
      @answer = (number1 / number2).to_s
    end
    

    final = @answer
    final
  end


end