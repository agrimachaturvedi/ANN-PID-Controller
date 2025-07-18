% Load Dataset (update name if different)
data = readmatrix('DataSet.csv');  % OR use xlsread / load() if .mat/.xlsx

% Split columns into inputs and targets
inputs = data(:,1)';    % error values - transpose for MATLAB
targets = data(:,2)';   % control outputs

% Create and configure neural network
net = fitnet(10);       % 10 hidden neurons
net.trainParam.epochs = 1000;
net.trainFcn = 'trainlm';  % Levenberg-Marquardt

% Train the network
[net,tr] = train(net, inputs, targets);

% Test it on same inputs
outputs = net(inputs);
performance = perform(net, targets, outputs);

% Show result
disp('Performance (MSE):');
disp(performance);

% Plot
figure;
plot(inputs, targets, 'ro', inputs, outputs, 'b-');
legend('Original Data', 'ANN Output');
xlabel('Error'); ylabel('Control Signal');

% Save model
save('trained_ann.mat', 'net')
