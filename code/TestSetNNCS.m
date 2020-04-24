%% Run multiple scenarios using NNV reachability analysis
clc;clear;close all;
% --- Setup scenarios ---
lb1 = [10000; 5234; 0.2; 10030; 3450; 0.7; 17783; -1.7540; 0.4900];
up1 = [10006; 5240; 0.21; 10036; 3456; 0.71; 17902; -1.7674; 0.5100];
init_set1 = Star(lb1,up1);
lb2 = [10000; 5234; 0.2; 10030; 3450; 0.7; 17783; -1.7540; 0.5];
up2 = [10006; 5240; 0.2; 10036; 3456; 0.7; 17902; -1.7574; 0.5];
init_set2 = Star(lb2,up2);
% Number of simulations
init_set = [init_set1 init_set2];
m = size(init_set,1);
%% Simulate all
AllSets = cell(1,2*m);
timing = cell(1,2*m);
for i=2:m
    disp('     Scenario ' + string(i));
    disp('-------------------------');
    t = tic;
    AllSets{i} = SetSimulationNNCS(init_set(i),1,1,'exact-star');
    timing{i} = toc(t);
    t = tic;
    AllSets{m+i} = SetSimulationNNCS(init_set(i),1,1,'approx-star');
    timing{m+1} = toc(t);
    disp(' ');
end