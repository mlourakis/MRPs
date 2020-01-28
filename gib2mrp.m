% gib2mrp - convert a Gibbs (i.e., classical Rodrigues) vector g (3x1) to an MRP vector (3x1)
%
%    m = gib2mrp(g)
% 
%    g - 3x1 Rodrigues vector
%    m - 3x1 MRP vector
%
% See also: mrp2gib

% Manolis Lourakis 2019
% Institute of Computer Science, Foundation for Research & Technology - Hellas
% Heraklion, Crete, Greece

function m = gib2mrp(g)

  g=g(:);
  m=g/(1 + sqrt(1 + g'*g)); % (3.138) in Schaub & Junkins

return
