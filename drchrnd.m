function r = drchrnd(a,n)
r=gamrnd(a,n);
r=r./sum(r);