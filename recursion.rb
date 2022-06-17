# frozen_string_literal: true

# fibonacci using iteration

def fibs(n)
  array = []
  i = 0
  while i <= n
    if i == 0
      array << 0
    elsif i == 1
      array << 1
    else
      num = array[i - 1] + array [i - 2]
      array << num
    end
    i += 1
  end
  array
end

def fibs_rec(n)
  if n == 0
    return [0]

  elsif n == 1
    return [0, 1]
  end

  array = fibs_rec(n - 1)
  array << array[-2] + array[-1]
end

p fibs(10)
p fibs_rec(10)
