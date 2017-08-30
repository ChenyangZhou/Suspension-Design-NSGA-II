clear
clc
tic
global Excel
global Goal
Excel = actxserver('Excel.Application');
Excel.Visible = 1;
Workbook = Excel.Workbooks.Open('K:\b1\vemireddy\studis\Zhou\05_Tool and downloaded mfile\01Programming using Matlab\Method4_Toolbox_02_NewFG2\NeuFg2.xlsm');

 Comment = 'Write Comment here';
% ************** Only used to get Goal Curves NO MORE OTHER USAGE *************%
% GoalSet = [2496.441768	-357.9240734	136.9506112
% 2517.375524	-686.5343715	134.6211801
% 2709.995987	-358.4184089	126.4434344
% 2654.995295	-753.9295778	136.657443
% 2421.372557	-361.9553763	-24.91039886
% 2493.275118	-677.8609179	-50.31745285
% 2689.411841	-273.8087698	-63.0141598
% 2709.496035	-671.3560555	-87.37618836
% 2335.202136	-473.7098942	2.68136135
% 2498.767448	-732.8870224	-41.86764171
% 2601	-764	11.5];    

%% 3D problem  2d solution
GoalSet = [-292.95	-437.63	384.76
-191.34	-683.83	412.98
-36.98	-449.67	354.43
-139.06	-653.74	412.45
-252.55	-336.6	-152.33
-225.48	-702.23	-155.94
102.26	-390.22	-109.72
-167.75	-713.64	-123.66
-328	-345	-107
-335.15	-720.98	-110
-208.09	-916.92	-1.5542];   
% ************** 33,design variables *************%
% RefSet = [2499.5,-357,137;
%           2535.5,-717,130;
%           2705.5,-357,137;
%           2669.5,-717,130;
%           2416.5,-340,-11;
%           2517.380,-664.03,-50.48;
%           2701.500,-284,-71;
%           2690,-690,-90;
%           2336.630,-487.5,-2.18;
%           2477.400,-729.0400,-41.86;
%           2602.5,-809,11];    %-809.0
      %% 3D problem  2d solution
 RefSet = [-279.8311	-469.22	357.137
-205.8326	-661.2525	400.3364
12.7203	-462.6337	313.18
-166.6429	-619.584	426.4617
-237.3049	-313.177	-184.2683
-214.9809	-695.1274	-201.4349
90.9845	-422.5345	-87.4027
-203.5313	-667.9016	-138.9162
-375.4865	-368.4678	-90.9383
-343.0388	-678.5219	-121.6131
-235.6729	-882.764	12.4575]; 
      
 lb    =  reshape((RefSet-50),1,33);      
 ub    =  reshape((RefSet+50),1,33);
% Get goal data
  Goal = getdataNeuFg(GoalSet);

 nvars = 33;
 PopInitRange_Data = [lb;ub];
 PopulationSize_Data =100;
 Generations_Data = 150;
 StallGenLimit_Data = 10;
 TolFun_Data = 1e-5;
 MaxFunEvals_Data =2500;
 MaxIter_Data = 300;
 TolX_Data = 1e-3;
 TolCon_Data = 1e-5;
 CrossoverFraction_Data = 0.75;
 PFraction = 0.15;
 
[x,fval,exitflag,output,population,score] = TxNeuFg2(nvars,lb,ub,PopInitRange_Data,PopulationSize_Data,Generations_Data,StallGenLimit_Data, TolFun_Data, MaxFunEvals_Data, MaxIter_Data,TolX_Data,TolCon_Data,CrossoverFraction_Data,PFraction);

TimeConsum = toc;

%%
[row column] = size(x);
co = 1;
 
for i= 1:row 
    ParVor = x(i,:);
%Par = [reshape(ParVor,10,3);2602.5,-762,11];
 Par = reshape(ParVor,11,3);     
ParSet(co:co+10,1:3) = Par;
ParSet(co+11,1:3) = [0 0 0];
co = co+12;
end

c = clock;
save([date '_' num2str(c(4)) num2str(c(5)) '_NeuWithFg.mat']);

Excel.Quit;