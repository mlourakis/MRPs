% mrp2gib - convert an MRP vector (3x1) to a Gibbs (i.e., classical Rodrigues) vector g (3x1)
%
%    g = mrp2gib(m)
% 
%    m - 3x1 MRP vector
%    g - 3x1 Rodrigues vector
%
% See also: gib2mrp

% Manolis Lourakis 2019
% Institute of Computer Science, Foundation for Research & Technology - Hellas
% Heraklion, Crete, Greece

function g = mrp2gib(m)

  m=m(:);
  g=2*m/(1-m'*m); % (253) in Shuster; (3.137) in Schaub & Junkins

return
