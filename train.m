function train(hidden_size, lr)
% 完整训练过程实现
%
% :param hidden_size: 隐藏层单元个数
% :param lr: 学习率

% 程序实现1：参数设置（可以尝试自己修改）=====================================
input_size = 784;
output_size = 10;
train_num = 60000;
epoch = 5;
batch_size = 100;
log_freq = 100;
steps_per_epoch = train_num / batch_size;
% 程序结束1=================================================================

% 读取mnist数据集
[test_x, test_y, train_x, train_y] = read_mnist();

% 初始化权重值
W1 = normrnd(0, 1e-2, [input_size, hidden_size]);
b1 = zeros(1, hidden_size);
W2 = normrnd(0, 1e-2, [hidden_size, output_size]);
b2 = zeros(1, output_size);

% log
loss_list = zeros(epoch * steps_per_epoch, 1);
err_list = zeros(epoch * steps_per_epoch, 1);
times = 1;

% 迭代训练
for i=1:epoch
    % 程序实现2：随机小批量训练集读取========================================

    for j=1:steps_per_epoch

        
        train_data = 
        train_label = 
   % 程序结束2==============================================================
        
        % 单步训练，权重更新
        [loss, score, W1, b1, W2, b2] = train_step(train_data, train_label, W1, b1, W2, b2, lr);
        
        % log
        % 程序实现3：计算错误率==============================================

        
        err = 
        % 程序结束3=========================================================
        loss_list(times) = loss;
        err_list(times) = err;
        if mod(times, log_freq) == 0
            fprintf('epoch: %2d | steps: %6d | loss: %6.4f | error: %.4f\n', i, times, loss, err);
        end
        times = times + 1;
    end
end

% 输出训练结果
save weights.mat W1 b1 W2 b2
log_steps = 1:epoch * steps_per_epoch;
figure();
plot(log_steps, loss_list)
title('loss curve')
xlabel('steps')
ylabel('loss')
figure();
plot(log_steps, err_list);
title('error curve')
xlabel('steps')
ylabel('error')
