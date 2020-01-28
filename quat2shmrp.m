% quat2shmrp - convert a quaternion (4x1) to a shadow MRP vector (3x1) 
%
%    m = quat2shmrp(q)
% 
%    q - 4x1 quaternion
%    m - 3x1 MRP vector
%
% See also: mrp2quat

% Manolis Lourakis 2017
% Institute of Computer Science, Foundation for Research & Technology - Hellas
% Heraklion, Crete, Greece

function m = quat2shmrp(q)

  q=q(:);
  p=q'*q;
  if(p<0.99999 || p>1.00001),
    disp('Warning: quat2shmrp: quaternion is not of unit norm');
    disp(1-p);
  end
  q=q./sqrt(p); % normalize

  m=q(2:4)./(1 + q(1));

  m=-m./(m'*m); % eq. (33) in MRP paper
   
return
