% mrp2rodr - convert an MRP vector (3x1) to a Rodrigues vector \omega (3x1)
%
%    w = mrp2rodr(m)
% 
%    m - 3x1 MRP vector
%    w - 3x1 Rodrigues vector
%
% See also: rodr2mrp

% Manolis Lourakis 2017
% Institute of Computer Science, Foundation for Research & Technology - Hellas
% Heraklion, Crete, Greece

function w = mrp2rodr(m)

  normm=norm(m);
  th=4*atan(normm); % norm(m)=tan(th/4), see Schaub (3.136)
  w=th/normm*m; % eq. (27) in MRP paper

return
