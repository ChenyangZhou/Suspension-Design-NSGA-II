

global Goal

%%
% if Excel is closed, then uncomment this part
% % 

%  global Excel
%  Excel = actxserver('Excel.Application');
%  Excel.Visible = 1;
%  Workbook = Excel.Workbooks.Open('K:\b1\vemireddy\studis\Zhou\05_Tool and downloaded mfile\01Programming using Matlab\Method4_Toolbox_02_NewProblem\Neu.xlsm');
% 
% 


[row column] = size(ParSet);

n = row/12;

KVPoints = [2496.441768	-357.9240734	136.9506112
2517.375524	-686.5343715	134.6211801
2709.995987	-358.4184089	126.4434344
2654.995295	-753.9295778	136.657443
2421.372557	-361.9553763	-24.91039886
2493.275118	-677.8609179	-50.31745285
2689.411841	-273.8087698	-63.0141598
2709.496035	-671.3560555	-87.37618836
2335.202136	-473.7098942	2.68136135
2498.767448	-732.8870224	-41.86764171
2601	-764	11.5];

RefSet = [2499.5,-357,137;
          2535.5,-717,130;
          2705.5,-357,137;
          2669.5,-717,130;
          2416.5,-340,-11;
          2517.380,-664.03,-50.48;
          2701.500,-284,-71;
          2690,-690,-90;
          2336.630,-487.5,-2.18;
          2477.400,-729.0400,-41.86;
         2602.5,-809,11];
     
KVData = getgoalNeu(KVPoints);
RefData = getgoalNeu(RefSet);

co=1;
ParForPlot = ParSet(co:co+10,1:3);
Real = getgoalNeu(ParForPlot);


% subplot(1,2,1)
plot(-100:100,KVData.toe,'r');
title('Before Optimization','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('Angle/Degree','FontSize',20);
set(gca,'FontSize',20);
hold on
plot(-100:100,RefData.toe,'c');
plot(-100:100,Real.toe,'g');
legend('Desired','Current','Optimized');
grid on
hold off


% co = 1;
% i=7;
%     
% disp(['ParSet No.', num2str(i)]);   
% 
% 
% ParForPlot = ParSet(co:co+10,1:3);
% Real = getgoalNeu(ParForPlot);
% 
% subplot(1,2,2)
% plot(-100:100,KVData.toe,'r');
% title('After Optimization','FontSize',24);
% xlabel('Wheel Travel/mm','FontSize',20);
% ylabel('Angle/Degree','FontSize',20);
% set(gca,'FontSize',20);
% hold on
% plot(-100:100,Real.toe,'g');
% legend('Goal','Real');
% grid on
% hold off



