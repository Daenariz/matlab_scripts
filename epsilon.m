function [ep] = epsilon()
  ep = 1.0;
  while (1.0 + ep) > 1.0
    ep = ep / 2;
  endwhile
  ep = ep * 2;
  % ermittelte Maschinengenauigkeit lautet ep = 2.2204e-16
end
