%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ---- 本脚本用于测试参数传递 ---- %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % ---- 注释 ---- %
        % ---- 本脚本的主要作用是参数的传递问题：
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            % ---- 通过本脚本的执行，可以得到：
                % ----
                % ---- 如果将脚本testGetMin加载到findpow里面，则脚本testGetMin可以使用findpow里面的变量
                % ----
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
          
[m, n]=size(pop);
tmp=0;
for i=1:n
    tmp = tmp + pop(i);
    fprintf('%.0f ', pop(i));
end
fprintf('\n');
scores = - tmp; %同样要取反