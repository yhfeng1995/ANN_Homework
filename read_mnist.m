function [test_x, test_y, train_x, train_y] = read_mnist()
% 读取数据集
%
% :return test_x: 测试集数据，样本总数*特征（像素总个数）=10000*784
% :return test_y: 测试集真实标签，样本总数*标签（onehot）=10000*10
% :return train_x: 训练集数据，样本总数*特征（像素总个数）=60000*784
% :return train_y: 训练集真实标签，样本总数*标签（onehot）=60000*10

load mnist_uint8.mat  % train_x, train_y, test_x, test_y载入到工作区

% 程序实现：数据集每个特征维度（纵向）均值归一化（均值=0；标准差=1）===========



% 程序结束==================================================================
end