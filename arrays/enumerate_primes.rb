def enumerate_primes(n)
  primes = []
  is_prime = [1] * (n + 1)
  i = 2

  while i <= n
    if is_prime[i] == 1
      primes << i
      j = i

      while j <= n
        is_prime[j] = 0
        j = j + i
      end
    end
    i += 1
  end

  primes
end

puts enumerate_primes(11).inspect