% rot2mrp - converts a rotation matrix (3x3) to an MRP vector (3x1)
%
%    m = rot2mrp(R)
% 
%    R - 3x3 rotation matrix
%    m - 3x1 MRP vector
%    
% See also: mrp2rot

% Note: might return the shadow MRP -m/(m*m') which represents the same rotation as m

% Manolis Lourakis 2017
% Institute of Computer Science, Foundation for Research & Technology - Hellas
% Heraklion, Crete, Greece

function m = rot2mrp(R)

  rho=-1/(1+trace(R))*[R(2,3)-R(3,2), R(3,1)-R(1,3), R(1,2)-R(2,1)]; % Rodrigues vector, see (204) in Shuster; seems to have a wrong sign
  m=rho'/(1 + sqrt(1 + rho*rho')); % (3.138) in Schaub & Junkins

return
