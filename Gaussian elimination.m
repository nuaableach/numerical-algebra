n=10;
x=zeros(n,n);

%%% �������һ��10ά����
for i = 1:n
    for j = 1:n
        x(i,j)=randi(10);
    end
end

y=x;
%%% ��˹��Ԫ�㷨
for k = 1:n-1
    mid_factor = y(k+1:n,k)/y(k,k);
    y(k+1:n,k:n) = y(k+1:n,k:n)-mid_factor*y(k,k:n);
end
