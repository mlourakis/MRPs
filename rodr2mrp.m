% rodr2mrp - convert a Rodrigues vector \omega to an MRP vector (3x1)
%
%    m = rodr2mrp(w)
% 
%    w - 3x1 Rodrigues vector
%    m - 3x1 MRP vector
%
% See also: mrp2rodr

% Manolis Lourakis 2017
% Institute of Computer Science, Foundation for Research & Technology - Hellas
% Heraklion, Crete, Greece

function m = rodr2mrp(w)

  th=norm(w);
  m=tan(th/4.0)/th*w; % eq. (27) in MRP paper

return
