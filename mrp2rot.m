% mrp2rot - convert an MRP vector (3x1) to a rotation matrix (3x3) 
%
%    R = mrp2rot(m)
% 
%    m - 3x1 MRP vector
%    R - 3x3 rotation matrix
%
% See also: rot2mrp.m

% Manolis Lourakis 2017
% Institute of Computer Science, Foundation for Research & Technology - Hellas
% Heraklion, Crete, Greece

function R = mrp2rot(m)

  m=m(:);
  sqmag=m'*m;
  skw=[0 -m(3) m(2); m(3) 0 -m(1); -m(2) m(1) 0]; % [m]_x
  R=eye(3) + ((4*(1-sqmag)*eye(3) + 8*skw)*skw)/(1+sqmag)^2; % (225b) from Shuster

  %tmp=(eye(3)+skw)/(eye(3)-skw); % inverse (2.149) in Markley-Crassidis
  %R=tmp*tmp;
   
return
