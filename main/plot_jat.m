function plot_jat(data_folder,tc)
data_files = dir(data_folder);
% Define axis limits and ticks for consistency
xp = {[-40000 -20000 0 20000];
    [-10000 -5000 0 5000 10000];
    [-5000 0 5000];
    [-30000 -20000 -10000 0 10000];
    [-50000 0 50000];
    [-10000 0 10000 20000 30000 40000];
    [-20000 0 20000 40000 60000 80000];
    [-10000 0 10000 20000 30000];
    [-20000 -10000 0 10000 20000];
    [-5000 0 5000 10000]};
yp = {[0 10000 20000 30000 40000 50000 60000 70000 80000];
    [10000 15000 20000 25000 30000];
    [20000 22000 24000 26000 28000 30000 32000 34000];
    [-30000 -20000 -10000 0 10000];
    [0 20000 40000 60000 80000 100000 120000 140000];
    [0 10000 20000 30000 40000 50000];
    [0 20000 40000 60000 80000 100000];
    [0 10000 20000 30000 40000 50000];
    [0 10000 20000 30000 40000 50000];
    [30000 32500 35000 37500 40000 42500 45000 47500]};
xp_label = {{'-40000', '-20000', '0', '20000'};
    {'-10000' '-5000' '0' '5000' '10000'};
    {'5000' '0' '5000'};
    {'-30000' '-20000' '-10000' '0' '10000'};
    {'-50000' '0' '50000'};
    {'-10000' '0' '10000' '20000' '30000' '40000'};
    {'-20000' '0' '20000' '40000' '60000' '80000'};
    {'-10000' '0' '10000' '20000' '30000'};
    {'-20000' '-10000' '0' '10000' '20000'};
    {'-5000' '0' '5000' '10000'}};
yp_label = {{'0', '10000', '20000', '30000', '40000', '50000', '60000', '70000', '80000'};
    {'10000' '15000' '20000' '25000' '30000'};
    {'20000' '22000' '24000' '26000' '28000' '30000' '32000' '34000'};
    {'-30000' '-20000' '-10000' '0' '10000'};
    {'0' '20000' '40000' '60000' '80000' '100000' '120000' '140000'};
    {'0' '10000' '20000' '30000' '40000' '50000'};
    {'0' '20000' '40000' '60000' '80000' '100000'};
    {'0' '10000' '20000' '30000' '40000' '50000'};
    {'0' '10000' '20000' '30000' '40000' '50000'};
    {'30000' '32500' '35000' '37500' '40000' '42500' '45000' '47500'}};
xl = [[-55000 30000];[-12000 11400];[-7000 7000];[-33000 11000];[-75000 60000];
    [-12000 44000];[-22000 82000];[-15000 40000];[-25000 23000];[-8200 12500]];
yl = [[-2000 81000];[9000 33000];[21200 34070];[-33000 15000];[-2000 142000];
    [-9000 51000];[-4000 105000];[-3000 53000];[-2000 50500];[25000 48500]];
% % set(groot,'defaultFigureVisible','on')
f = figure;
hold on;
grid;
for k=3:length(data_files)
    load(string(data_files(k).folder)+ "/" + string(data_files(k).name)); % variables: output
%     N = length(output);
%     f = figure;
%     hold on;
%     grid;
    set(gcf,'Color',[1 1 1]);
    set(gca, 'GridAlpha', 1); % Set transparency of grid
    set(gca, 'color', [17 17 17]/19); % Set background color 
    set(gcf,'inverthardcopy','off'); % Enable saving the figure as it is
%     for i=1:N
    Star.plotBoxes_2D_noFill(output.step_sets,1,2,'k');
    %     Star.plotBoxes_2D_noFill(output(i).data.int_reachSet,1,2,[1 0.4 0.6],0.1);
%     end
%     xlim(xl(tc,:));
%     ylim(yl(tc,:));
%     xticks(xp{tc});
%     yticks(yp{tc});
%     xticklabels(xp_label{tc,:});
%     yticklabels(yp_label{tc,:});
%     xlabel('X Position (ft)');
%     ylabel('Y Position (ft)');
%     ax = gca; % Get current axis
%     ax.GridColor = 'w'; % Set grid lines color
%     ax.XAxis.FontSize = 15; % Set font size of axis
%     ax.YAxis.FontSize = 15;
%     saveas(f,"../data_reach/figs/TestPoint"+string(tc)+"both.png");

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % f = figure;
    % hold on;
    % grid;
    % set(gcf,'Color',[1 1 1]);
    % set(gca, 'GridAlpha' , 1); % Set transparency of grid
    % set(gca, 'color', [17 17 17]/19); % Set background color 
    % set(gcf,'inverthardcopy','off'); % Enable saving the figure as it is
    % for i=1:N
    %     % Star.plotBoxes_2D_noFill(output(i).data.int_reachSet,1,2,[1 0.4 0.6],0.1);
    %     Star.plotBoxes_2D_noFill(output(i).data.step_sets,1,2,'r');
    % end
    % xlabel('X Position (ft)');
    % ylabel('Y Position (ft)');
    % ax = gca; % Get current axis
    % ax.GridColor = 'w'; % Set grid lines color
    % ax.XAxis.FontSize = 15; % Set font size of axis
    % ax.YAxis.FontSize = 15;
    % axis(ax,'equal');
    % xlim(ax, xlim(ax) + [-1,1]*range(xlim(ax)).* 0.02)
    % ylim(ax, ylim(ax) + [-1,1]*range(ylim(ax)).* 0.02)
    % outerpos = ax.OuterPosition;
    % ti = ax.TightInset; 
    % left = outerpos(1) + ti(1);
    % bottom = outerpos(2) + ti(2);
    % ax_width = outerpos(3) - ti(1) - ti(3);
    % ax_height = outerpos(4) - ti(2) - ti(4);
    % ax.Position = [left bottom ax_width ax_height];
    % saveas(f,"../data_reach/figs/TestPoint"+string(tc)+"both_zoom.png");
end
xlim(xl(tc,:));
ylim(yl(tc,:));
xticks(xp{tc});
yticks(yp{tc});
xticklabels(xp_label{tc,:});
yticklabels(yp_label{tc,:});
xlabel('X Position (ft)');
ylabel('Y Position (ft)');
ax = gca; % Get current axis
ax.GridColor = 'w'; % Set grid lines color
ax.XAxis.FontSize = 15; % Set font size of axis
ax.YAxis.FontSize = 15;
saveas(f,"../data_reach/figs/TestPoint"+string(tc)+"reach.png");
end

