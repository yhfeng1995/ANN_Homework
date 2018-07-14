function train(hidden_size, lr)
% ����ѵ������ʵ��
%
% :param hidden_size: ���ز㵥Ԫ����
% :param lr: ѧϰ��

% ����ʵ��1���������ã����Գ����Լ��޸ģ�=====================================
input_size = 784;
output_size = 10;
train_num = 60000;
epoch = 5;
batch_size = 100;
log_freq = 100;
steps_per_epoch = train_num / batch_size;
% �������1=================================================================

% ��ȡmnist���ݼ�
[test_x, test_y, train_x, train_y] = read_mnist();

% ��ʼ��Ȩ��ֵ
W1 = normrnd(0, 1e-2, [input_size, hidden_size]);
b1 = zeros(1, hidden_size);
W2 = normrnd(0, 1e-2, [hidden_size, output_size]);
b2 = zeros(1, output_size);

% log
loss_list = zeros(epoch * steps_per_epoch, 1);
err_list = zeros(epoch * steps_per_epoch, 1);
times = 1;

% ����ѵ��
for i=1:epoch
    % ����ʵ��2�����С����ѵ������ȡ========================================

    for j=1:steps_per_epoch

        
        train_data = 
        train_label = 
   % �������2==============================================================
        
        % ����ѵ����Ȩ�ظ���
        [loss, score, W1, b1, W2, b2] = train_step(train_data, train_label, W1, b1, W2, b2, lr);
        
        % log
        % ����ʵ��3�����������==============================================

        
        err = 
        % �������3=========================================================
        loss_list(times) = loss;
        err_list(times) = err;
        if mod(times, log_freq) == 0
            fprintf('epoch: %2d | steps: %6d | loss: %6.4f | error: %.4f\n', i, times, loss, err);
        end
        times = times + 1;
    end
end

% ���ѵ�����
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
