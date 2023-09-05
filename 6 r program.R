is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  
  return(TRUE)
}
get_primes_up_to <- function(limit) {
  primes <- c()
  
  for (num in 2:limit) {
    if (is_prime(num)) {
      primes <- append(primes, num)
    }
  }
  
  return(primes)
}
limit <- 50
prime_numbers <- get_primes_up_to(limit)
cat("Prime numbers up to", limit, "are:")
print(prime_numbers)
