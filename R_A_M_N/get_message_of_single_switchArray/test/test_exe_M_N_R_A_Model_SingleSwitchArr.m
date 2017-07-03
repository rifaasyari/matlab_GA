%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- 本脚本用于测试exe_Create_Only_M_N_R_A_Model---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- 注释 ---- %
        % ---- 本脚本的主要作用是：
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 测试exe_Create_Only_M_N_R_A_Model
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

            
%% ---- 计时开始
    % ---- 用于统计运行时间
        tic;
%% ---- clear and close
    clc;
    clear;
    close all;
%% ---- 定义全局变量
    global m n;
%% ---- 设定天线阵列的行数和列数
    % ---- 设定行数m
        m = 5;
    % ---- 设定列数n
        n = 5;
%% ---- 加载参数文件
    %{
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
            本脚本包含可重构天线模型所有的基本尺寸的数据
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
    %}
    modelParametersFor_M_N_R_A;
%% ---- 加载fileDirectoryParameters.m脚本
    %{
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
            1.本脚本包含3个数组：
                第一个数组fileDirectoryOfLab对应的是实验室电脑的目录
                第二个数组fileDirectoryOfServer对应的是实验室服务器的目录
                第二个数组fileDirectoryOfThinkpad对应的是我的笔记本的目录

                使用的时候请根据使用环境，调用对应的数组

            2.每个数组包含5个元素：
                第一个元素hfssMatlabApiDirectory是HFSS-MATLAB-API所在目录
                第二个元素prjFileDirectory是工程文件保存目录
                第三个元素scriptFileDirectory是脚本文件保存目录
                第四个元素dataFileDirectory是HFSS输出数据的保存目录
                第五个元素hfssExecutePath是HFSS的执行路径

            3.之所这么做是因为在不同的运行环境，总是需要修改这些目录，
              因此将所有的目录统一在一个文件里面，
              并将同一个运行环境的目录保存在一个数组里面，
              这样执行文件只需要更改调用的数组即可，无需再修改原始目录
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
    %}
    fileDirectoryParameters_V2ForTest;
    %{
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
            此处之所以定义tmpfileDirectory，有两个优点：
                1.为了修改方便。更改运行环境之后，只需要将相应的数组赋值给tmpfileDirectory，
                  即可，无需多余的操作，极大地降低了操作的繁琐性。
                2.利用了封装的思想，使原数组对后面的操作不可见，保护了原数组的安全。
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
    %}
    tmpfileDirectory = fileDirectory;
%% ---- 加载开关组合脚本
    %{
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
            testArrForOnly_M_N_R_A_Model脚本包含SwitchArrayOf_Only_M_N_R_A_Model数组
            SwitchArrayOf_Only_M_N_R_A_Model包含3个数组
                每个数组由0和1组成
                0代表开关断开
                1代表开关闭合
                数组的长度由开关的个数决定

                SwitchArrayOf_Only_M_N_R_A_Model(1, :)代表SwitchArray1，其他以此类推
                    其中，
                        SwitchArray1代表开关全部断开
                        SwitchArray2代表开关全部闭合
                        SwitchArray3代表随机的开关组合
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
    %}
    testArr_M_N_R_A_Model_SingleSwitchArr;
    %{
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
            % ---- 这个数组testSwtichArray只有0和1两个元素
                % ---- 0代表开关断开
                % ---- 1代表开关闭合

                数组中的索引和阵列天线中的开关索引一致
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
    %}
    tmpSwtichArray = SwitchArrayOf_M_N_R_A_Model_SingleSwitchArr(3, :);
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
    exe_M_N_R_A_Model_SingleSwitchArr;
%% ---- 调用getFigure函数
    getFigureForTest(tmpDataFile, tmpSwtichArray);
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