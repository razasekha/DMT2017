function C =DataProcess(filename)
%generate halved data, 5 columns: A_x, A_y, A_z, MMG_top, MMG_btm
A = csvread(filename);
[r,~] = size(A);
B = zeros(ceil(r/5),3);
B(:,1) = A(1:5:end,20)*256 + A(1:5:end,21);
B(:,2) = A(1:5:end,22)*256 + A(1:5:end,23);
B(:,3) = A(1:5:end,24)*256 + A(1:5:end,25);
C=B;