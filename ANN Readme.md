
# Design of an ANN-Based Controller for Real-Time Error-Driven Motor Output Prediction using MATLAB

## ABSTRACT
The primary aim of this project is to design a neural network-based controller capable of predicting the control output of a motor system in real-time, based on the instantaneous error between the desired and actual motor position or speed. The project involves the construction of a feedforward artificial neural network (ANN) trained using supervised learning techniques in MATLAB. The dataset was generated from previously tuned PID controller simulations, capturing the error as input and the controller output as target.

The ANN was trained using the Levenberg-Marquardt backpropagation algorithm and validated for accuracy using Mean Squared Error (MSE) metrics and response visualizations. The trained model was exported and integrated into a Simulink environment via a MATLAB Function block, allowing the ANN to generate control outputs dynamically during simulation. Performance testing confirmed that the ANN-based controller delivers smooth and responsive control actions and can be used as a data-driven alternative to conventional PID systems.

## MOTIVATION AND OBJECTIVE
In modern motor control systems, achieving high precision, fast response, and adaptability is crucial. While PID controllers remain widely used, they require manual tuning and often fail to adapt to varying conditions. Artificial Neural Networks (ANNs), inspired by biological learning systems, provide an intelligent, adaptive solution capable of learning complex mappings from data. This project aims to utilize an ANN to replicate the behavior of a well-tuned PID controller using a data-driven model that can adapt to nonlinearities and uncertainties in the system.

The objective is to reduce dependency on manual tuning, improve real-time responsiveness, and demonstrate the feasibility of integrating trained machine learning models in Simulink-based control environments.

## OUTLINE OF THE PROJECT
1. A dataset was collected from a PID-controlled motor simulation capturing error and corresponding control output.
2. MATLAB was used to load and preprocess the data for ANN training.
3. A feedforward neural network with 10 hidden neurons was designed using `fitnet()` and trained with the `trainlm` algorithm.
4. The trained ANN model was evaluated using MSE and result plots.
5. The final ANN was saved as a `.mat` file (`trained_ann.mat`).
6. The model was integrated into a Simulink model using a MATLAB Function block.
7. Real-time testing in Simulink was conducted using Constant inputs and Scope for output verification.
8. Output was compared with expected controller performance to validate the model.

## PURPOSE, SCOPE, AND APPLICABILITY

### PURPOSE
- To design a self-adaptive control system that can learn the relationship between system error and control signal without explicit tuning.
- To demonstrate the application of supervised learning (ANN) in classical control tasks.
- To build an integrated model that works with Simulink and MATLAB scripting environments.

### SCOPE
- The model can be expanded to multi-layer ANN, optimized neuron configurations, and dynamic learning scenarios.
- The ANN controller is applicable to BLDC motor speed control, position control systems, or similar industrial systems.
- Further work may include deployment on embedded hardware or integration with IoT platforms.

### APPLICABILITY
- Adaptive ANN-based controllers can significantly reduce control error, overshoot, and settling time in real-time applications.
- This method offers flexibility where conventional PID tuning is infeasible or needs frequent adjustments due to parameter variation.
- The trained ANN model is portable and can be integrated into larger simulation or control frameworks.

## ACKNOWLEDGEMENT
This project was completed under the guidance and support of my mentors and peers. I would like to thank my faculty, classmates, and all those who contributed towards the successful completion of this work. Special thanks to the MATLAB and Simulink resources and documentation that made model building and integration feasible within the limited time frame.

_**Submitted by: Kushagra Chandel**_
