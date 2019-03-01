function r = drchrnd(a,n)
%code copied from the Topic Modeling Toolbox by Mark Steyvers and Tom Griffiths (via Yi Wang)
r=gamrnd(a,n);
r=r./sum(r);