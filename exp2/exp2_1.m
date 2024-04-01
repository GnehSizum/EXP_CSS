n = input('请输入一个整数 n: ');

sum = 0;

for i = 0:n
    sum = sum + 2*i + 1;
end

fprintf('1 + 3 + 5 + 7 + ... + (2n + 1) 的值为: %d\n', sum);