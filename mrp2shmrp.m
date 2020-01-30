% mrp2shmrp - convert an MRP vector (3x1) to its equivalent shadow MRP vector (3x1) 
%
%    sm = mrp2shmrp(m)
% 
%    m - 3x1 MRP vector
%   sm - 3x1 shadow MRP vector
%
% See also: mrp2quat

% Manolis Lourakis 2020
% Institute of Computer Science, Foundation for Research & Technology - Hellas
% Heraklion, Crete, Greece

function sm = mrp2shmrp(m)

  m=m(:);
  sm=-m./(m'*m); % eq. (33) in MRP paper
   
return
