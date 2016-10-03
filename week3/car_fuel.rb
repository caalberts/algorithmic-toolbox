
# A = x0 <= x1 <= x2 <= ... <= xn <= xn+1 = B

def min_refills(x, car_range)
  n = x.size
  num_refills = 0
  current_refill = 0

  while current_refill <= n
    last_refill = current_refill

    while (current_refill <= n) && (x[current_refill + 1] - x[last_refill] <= car_range)
      current_refill += 1
    end

    return "impossible" if current_refill == last_refill
    num_refills += 1 if current_refill <= n
  end

  return num_refills
end
