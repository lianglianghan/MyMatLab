function [p0,err,k,y]=newton(A,p0,delta,epsilon,max1)
%Input	- f is the object function input as string 'f'
%		- dl fis the derivative of f input as a string 'df'
%		- p0 is the initial aprroximation to a zero of f
%		- epsilon is the tolerance for the function values y
%		- max1 is the maximum number of iterations
%Output - p0 is the Newton-Raphson approximation to the zero
%		- err is the error estimate for p0
%		- k is the number of iterations
%		- y is the function value f(p0)

for k=1:max1
    p1=(2*p0+A/(p0.^2))/3;
    err=abs(p1-p0);
    relerr=2*err/(abs(p1)+delta);
    p0=p1;
    y=p0.^3-A;
    if (err<delta)|(relerr<delta)|(abs(y)<epsilon)
        break;
    end
end

