# Uses Euclid's formula for generating Pythagorean triples
# http://en.wikipedia.org/wiki/Pythagorean_triple#Generating_a_triple

nfunc = function(x){
  return((500 - m^2) / m)
}

m = 16

n = nfunc(m)
while(n %% 1 != 0){
  m = m + 1
  n = nfunc(m)
}

a = m^2 - n ^2
b = 2 * m * n
c = m^2 + n^2

print(a*b*c)