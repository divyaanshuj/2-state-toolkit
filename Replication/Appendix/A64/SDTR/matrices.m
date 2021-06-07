% Matrices
param.NY = numel(fieldnames(vars));
AAA = zeros(param.NY,param.NY);
BBB = zeros(param.NY,param.NY);

% Output equation
AAA(eq.is,vars.x)       = 1;
AAA(eq.is,vars.pi)      = param.sigma;
BBB(eq.is,vars.x)       = 1;
BBB(eq.is,vars.i)       = param.sigma;
BBB(eq.is,vars.r)       = -param.sigma;

% Inflation equation
AAA(eq.pc,vars.pi)      = param.beta;
BBB(eq.pc,vars.pi)      = 1;
BBB(eq.pc,vars.x)       = -param.kappa;
BBB(eq.pc,vars.u_s)     = -1;

% Price level equation
AAA(eq.pl,vars.p_lag)   = 1;
BBB(eq.pl,vars.pi)      = 1;
BBB(eq.pl,vars.p_lag)   = 1;

% Cumulative Nominal GDP
AAA(eq.ngdpc,vars.y_lag)  = 1;
BBB(eq.ngdpc,vars.pi)     = 4;
BBB(eq.ngdpc,vars.x)      = 1;
BBB(eq.ngdpc,vars.y_lag)  = 1;

% Natural-r target
AAA(eq.rstar,vars.rstar)= 1;
BBB(eq.rstar,vars.rstar)= 1;

% Natural-r constant
AAA(eq.r,vars.r)        = 1;
BBB(eq.r,vars.r)        = 1;

% Cost push shock
AAA(eq.cps,vars.u_s)    = 1;
BBB(eq.cps,vars.u_s)    = 1;

%real rate
AAA(eq.real,vars.pi)      = 1;
BBB(eq.real,vars.real)    = -1;
BBB(eq.real,vars.i)       = 1;

% Price level target rule
AAA(eq.rule,vars.y_lag) = -param.phi_yc;
BBB(eq.rule,vars.i)     = -1;
BBB(eq.rule,vars.rstar) = 1;


