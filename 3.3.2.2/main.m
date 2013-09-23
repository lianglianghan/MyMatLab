A=[ 5,0,0,0;
    1,3,0,0;
    3,4,2,0;
    -1,3,-6,-1;
    ];
B=[-10;
    4;
    2;
    5];
[X]=forsub(A,B);

for k=1:length(X)
    fprintf('X %d = %.3f\n',k,X(k));
end