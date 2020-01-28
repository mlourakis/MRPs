% mrp2quat - convert an MRP vector (3x1) to a quaternion (4x1)
%
%    q = mrp2quat(m)
% 
%    m - 3x1 MRP vector
%    q - 4x1 quaternion
%
% See also: quat2mrp

% Manolis Lourakis 2017
% Institute of Computer Science, Foundation for Research & Technology - Hellas
% Heraklion, Crete, Greece

function q = mrp2quat(m)

  m=m(:);
  magsq=m'*m;
  q=[(1 - magsq); 2*m(1:3)]./(1 + magsq);
   
return
