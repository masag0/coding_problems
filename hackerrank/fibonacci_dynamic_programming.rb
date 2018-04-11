def fibonacci(n)
  # Write your code here
    hash = { 0 => 0, 1 => 1 }

    return hash[n] if hash[n]

    hash[n] = fibonacci(n-1) + fibonacci(n-2)
    return hash[n]
end

n = gets.to_i
print(fibonacci(n))
