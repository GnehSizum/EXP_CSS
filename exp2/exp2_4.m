%% (1)
syms t;

A = [cos(t), -sin(t); sin(t), cos(t)];

A_power_5 = A^5;

disp('A = ');
% disp(A_power_5);
disp(['[', char(A_power_5(1,1)), ',']);
disp([' ', char(A_power_5(1,2)), ';']);
disp([' ', char(A_power_5(2,1)), ',']);
disp([' ', char(A_power_5(2,2)), ']']);

%% (2)
B = [1, 2, 1, 0; 6, 2, 4, 1; 0, 2, 1, 0; 3, 1, 4, 1];

B_inv = inv(B);
B_inv_int = round(B_inv);

disp('B 的逆矩阵为:');
disp(B_inv_int);