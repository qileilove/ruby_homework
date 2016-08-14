class FizzBuzz
def fizz_buzz (params)
  if params.is_a?(Numeric)
    if params%3 == 0
      return 'Fizz'
    elsif params%5 == 0
      return 'Buzz'
    end
  elsif params.is_a?(String)
    if params.index('3') != nil
      return 'Fizz'
    elsif params.index('5') != nil
      return 'Buzz'
    end
  end
 end
end
