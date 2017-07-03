%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- 本函数用于根据工作频率计算适应度值 ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- 注释 ---- %
        % ---- 本函数的主要作用是：
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 1.根据工作频率计算适应度值
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
function scores = getScoresByFreq(freq)
%{ 
    ---- 注意 ----
    ---- 注意 ----
    ---- 注意 ----
        适应度值等于目标频率减去谐振频率的绝对值。
    ---- 注意 ----
    ---- 注意 ----
    ---- 注意 ----
%}
%% ---- 声明全局变量
    global objFreq
%% ---- 根据算法得到适应度值
    scores = abs(objFreq - freq);
end

