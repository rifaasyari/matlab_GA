%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- 本函数用于将指定染色体的工作频率及其对应的S11参数和适应度值写入文件 ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- 注释 ---- %
        % ---- 本函数的主要作用是：
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.将指定染色体的工作频率及其对应的S11参数和适应度值写入文件
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ---- 声明全局变量
    global count
%% ---- 打开文件
    %{ 
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
            ‘a’ ：以追加方式打开文件，打开文件后指针位于文件末尾。文件不存在则创建。
        ---- 注意 ----
        ---- 注意 ----
        ---- 注意 ----
    %}
    fidTxtForObjFuncByBand = fopen('..\matlab\data_file\ga_data\DataForObjFuncByBand.txt', 'a');
%% ---- 写入TXT文件
    % ---- 将染色体写入文件
        fprintf(fidTxtForObjFuncByBand, '%.0f ', tmpSwtichArray);
    % ---- 将其他信息写入文件
        fprintf(fidTxtForObjFuncByBand, '%.2f %.2f %.2f %.0f %.0f %.0f', freq, s11, scores, count, generationsOfMyR_A, generationsPositionOfMyR_A);
    % ---- 换行
        %{ 
            ---- 注意 ----
            ---- 注意 ----
            ---- 注意 ----
                windows下的txt的换行符是“\r\n”
            ---- 注意 ----
            ---- 注意 ----
            ---- 注意 ----
        %}
        fprintf(fidTxtForObjFuncByBand, '\r\n');
%% ---- 关闭文件
    fclose(fidTxtForObjFuncByBand);