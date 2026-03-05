function [n0] = grenzfakultaet()
  f = 1;
  n = 1;
  while true
    f = f * n;
    if f > realmax
      n0 = n;
      break;
    endif
    n = n + 1;
  endwhile
end
