function [f] = fakultaet(n)
  if n < 0
    error('Bitte eine nicht-negative Zahl eingeben');
  endif
  f = 1;
  for i = 1:n
    f = f * i;
  endfor
end
