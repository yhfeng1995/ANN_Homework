function [test_x, test_y, train_x, train_y] = read_mnist()
% ��ȡ���ݼ�
%
% :return test_x: ���Լ����ݣ���������*�����������ܸ�����=10000*784
% :return test_y: ���Լ���ʵ��ǩ����������*��ǩ��onehot��=10000*10
% :return train_x: ѵ�������ݣ���������*�����������ܸ�����=60000*784
% :return train_y: ѵ������ʵ��ǩ����������*��ǩ��onehot��=60000*10

load mnist_uint8.mat  % train_x, train_y, test_x, test_y���뵽������

mu=mean(train_x);    
sigma=max(std(train_x),eps);
train_x=bsxfun(@minus,train_x,mu);  %ÿ�������ֱ��ȥƽ��ֵ
train_x=bsxfun(@rdivide,train_x,sigma);  %�ֱ���Ա�׼��
end