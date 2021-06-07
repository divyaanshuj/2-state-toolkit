% Parameters
% Calibration: Eggertsson and Woodford (2003) with drop in output = 7.5% and no drop in inflation

param.NS      = 6;   

param.theta   = 7.87;
param.kappa   = 0.02;
param.mu      = 0.9; 
param.beta    = 0.99;
param.sigma   = 0.5; 
param.phi_pi  = 1.5; 
param.phi_x   = 0.5; 
param.phi_i   = 0.8; 
param.lagr_x  = 1/16;
param.lagr_pi = 1;   
param.rl      = -0.0150;   
param.rh      = 1/param.beta-1;  
param.ul      = 0.0015; 
param.uh      = 0;  

param.sl = [param.rh;param.rl;param.ul]; 
param.sh = [param.rh;param.rh;param.uh]; 

param.init_cond = [0;0;param.rh(1);0;0;param.rh(1);1;1;param.uh];