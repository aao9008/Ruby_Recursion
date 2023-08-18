#Return array of fibonacci sequence with n terms
def fibonacci(n)
  first_number = 0
  second_number = 1

  fib_array = []
  
  for i in 0...n do 

    if i == 0
      fib_array << 0
      next
    elsif i == 1
      fib_array << 1
      next 
    end 

    result = first_number + second_number
    
    fib_array << result

    first_number, second_number = second_number, result
  end

  p fib_array
end 

# Fibonnaci sequence using recursion
def fibs_rec(n)
  return [0] if n <= 1
  return [0, 1] if n == 2

  arr = fibs_rec(n - 1)
  arr << arr[-2] + arr[-1]
end

# Fibonnaci sequence using hybrid approach. Recursion and for loop.
def fibs(n)
  return 0 if n == 0
  return 1 if n == 1

  return fibs(n-1) + fibs(n-2)
end

for i in 0...8
  p fibs(i)
end
