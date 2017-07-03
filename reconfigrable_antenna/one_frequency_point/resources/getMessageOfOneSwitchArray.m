%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- 本函数用于得到指定开关组合的S11参数图 ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- 注释 ---- %
        % ---- 本函数的主要作用是：
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.得到指定开关组合的S11参数图
            % ---- 2.得到图形之后，下一个开关组合仿真开始时，不要关闭当前的图形，
            % ----   也就是将所有的开关组合的S11参数图画在一张图上
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function getMessageOfOneSwitchArray(myCurrentSwitchArray)
%% ---- 计时开始
    % ---- 用于统计运行时间
        tic;
%% ---- 定义tmpSwtichArray数组，并将myCurrentSwitchArray赋值给tmpSwtichArray
    %{ 
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
            这样做有两个目的：
                1.运用了封装的思想，让myCurrentSwitchArray对其他的程序不可见，这样保证了myCurrentSwitchArray的安全性
                2.为了方便测试

            tmpSwtichArray将被createUniteReconfigurableAntennaModel.m调用，用于判断开关的断开和闭合，详细信息可参见：myTestSwitchArray.m
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
    %}
    tmpSwtichArray = myCurrentSwitchArray;
    % ---- 输出当前开关组合
        fprintf('正在计算开关组合：');
        fprintf('%.0f ', tmpSwtichArray);
        fprintf('的工作频率及其对应的S11参数\n');
%% ---- 加载模型执行脚本executeModel.m
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
    executeModelForOneFrequencyPoint;
%% ---- 调用getFreq函数，得到当前开关组合的工作频率和S11参数
    getFigureOfOneSwitchArrayForOneFrequencyPoint(tmpDataFile, tmpSwtichArray)
%% ---- 计时结束
    %{ 
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
            toc自带输出功能
            函数执行完到toc，就会输出运行的时间
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
    %}
        toc;
    % ---- 换行
    	fprintf('\n');
end