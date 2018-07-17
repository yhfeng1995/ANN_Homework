function [test_x, test_y, train_x, train_y] = read_mnist()
% mnist���ݼ���ȡ�ο��ԣ�http://www.cnblogs.com/tiandsp/p/9042908.html

load mnist_uint8.mat

train_x = double(train_x) / 255;
test_x  = double(test_x)  / 255;
train_y = double(train_y);
test_y  = double(test_y);

mu=mean(train_x);    
sigma=max(std(train_x),eps);
train_x=bsxfun(@minus,train_x,mu);  %ÿ�������ֱ��ȥƽ��ֵ
train_x=bsxfun(@rdivide,train_x,sigma);  %�ֱ���Ա�׼��
end
