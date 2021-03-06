%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- 本脚本用于得到指定开关组合的信息---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- 注释 ---- %
        % ---- 本脚本的主要作用是：
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 测试得到指定开关组合的信息
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
%% ---- clear and close
    clc;
    clear;
    close all;
%% ---- 加载开关组合脚本
%{
%     %{
%         ---- 注意 ----
%         ---- 注意 ----
%         ---- 注意 ----
%             % ---- 本脚本只是用于产生一个数组testSwtichArray
%             % ---- 这个数组testSwtichArray只有0和1两个元素
%                 % ---- 0代表开关断开
%                 % ---- 1代表开关闭合
% 
% 
%             % ---- 数组元素的个数为12个，分别对应12个开关
%                 % ---- 索引(1)代表Switch11
%                 % ---- 索引(2)代表Switch12
% 
%                 % ---- 索引(3)代表Switch21
%                 % ---- 索引(4)代表Switch22
%                 % ---- 索引(5)代表Switch23
% 
%                 % ---- 索引(6)代表Switch31
%                 % ---- 索引(7)代表Switch32
% 
%                 % ---- 索引(8)代表Switch41
%                 % ---- 索引(9)代表Switch42
%                 % ---- 索引(10)代表Switch43
% 
%                 % ---- 索引(11)代表Switch51
%                 % ---- 索引(12)代表Switch52
%         ---- 注意 ----
%         ---- 注意 ----
%         ---- 注意 ----
%     %}
%     switchArray;
%     %{
%         ---- 注意 ----
%         ---- 注意 ----
%         ---- 注意 ----
%             此处之所以定义tmpSwtichArray，有两个优点：
%                 1.为了修改方便。使用其他开关组合脚本时，只需要将相应的数组赋值给tmpSwtichArray，
%                   即可，无需多余的操作，极大地降低了操作的繁琐性。
%                 2.利用了封装的思想，使原数组对后面的操作不可见，保护了原数组的安全。
%         ---- 注意 ----
%         ---- 注意 ----
%         ---- 注意 ----
%     %}
%     tmpSwtichArray = testSwtichArray;
    %}
    tmpSwtichArray = [1 1 0 1 1 0 0 0 0 0 1 1];
%% ---- 在控制台输出当前开关组合
    fprintf('正在计算开关组合：');
    fprintf('%.0f ', tmpSwtichArray);
    fprintf('的工作频率及其对应的S11参数\n');
%% ---- 加载模型执行脚本
    %{ 
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
            此脚本的作用是：
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                % ---- 1.执行建模脚本            
                % ---- 2.设置求解频率、扫频范围   
                % ---- 3.执行HFSS仿真            
                % ---- 4.输出仿真数据            
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
    %}
    executeModelForGetMessageOfSinlgeSwitchArray;
%% ---- 调用getFigure函数
    getFigureForTest(tmpDataFile, tmpSwtichArray);