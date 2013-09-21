function [  ] = Show(p,i)
%HANDLE Summary of this function goes here
%   Detailed explanation goes here

subplot(1,3,i);
% figure(i);
L1=p(:,[3,4,2]);
plot3(L1(1,:),L1(2,:),L1(3,:),'-.');
hold on;
L2=p(:,[1,5,7,3,1]);
plot3(L2(1,:),L2(2,:),L2(3,:));
hold on;
L3=p(:,[1,5,6,2,1]);
plot3(L3(1,:),L3(2,:),L3(3,:));
L4=p(:,[5,7,8,6,5]);
plot3(L4(1,:),L4(2,:),L4(3,:));
L5=p(:,[4,8]);
plot3(L5(1,:),L5(2,:),L5(3,:),'-.');

end

