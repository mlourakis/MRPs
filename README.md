# MRPs
Conversion from/to Modiﬁed Rodrigues Parameters (MRPs) representation for 3D rotation

This directory contains Matlab scripts for converting between MRPs and other popular rotation representations (e.g., Gibbs, Rodrigues, quaternion, rotation matrix). MRPs are a minimal rotation parameterization. Just like quaternions q and -q refer to the same rotation (the 2-fold symmetry), there are two possible MRPs that represent the same rotation. One is called the "shadow" of the other, however it is unimportant which one is considered the original and which the shadow. The MRP representation has a singularity at 2*pi which can be avoided with the shadow MRP that has a singularity at the zero rotation (see mrp2shmrp.m).

More information on MRPs can be found in
M.D. Shuster, "A survey of attitude representations", Journal of the Astronautical Sciences, 41(4): 439–517 (1993).
https://web.archive.org/web/20190925150540/http://www.malcolmdshuster.com/Pub_1993h_J_Repsurv_scan.pdf

G. Terzakis, M. Lourakis, D. Ait-Boudaoud, "Modified Rodrigues Parameters: An Efficient Representation of Orientation in 3D Vision and Graphics", Journal of Mathematical Imaging and Vision, 60(3): 422-442, (2018).
http://rdcu.be/wIBC
