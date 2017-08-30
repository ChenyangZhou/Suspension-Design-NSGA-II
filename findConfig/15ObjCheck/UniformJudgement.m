function Judgement = UniformJudgement(ParSet)

global Goal



%  global Excel
% Excel = actxserver('Excel.Application');
%   Excel.Visible = 1;
%   Workbook = Excel.Workbooks.Open('K:\b1\vemireddy\studis\Zhou\05_Tool and downloaded mfile\01Programming using Matlab\Method4_Toolbox\AKSIS_2007_Method4.xlsm');
%
[row column] = size(ParSet);
n = row/12;

Judgement = ones(n,15);
co = 1;
for i=1:n
 
 disp(['ParSet No.', num2str(i)]);   
    ParForPlot = ParSet(co:co+10,1:3);

Real = getdata04(ParForPlot);

R(1) = sum((Goal.toe - Real.toe).^2)/sum((Goal.toe-mean(Goal.toe)).^2);%*10;%2-3,0.1
R(2) = sum((Goal.camber - Real.camber).^2)/sum((Goal.camber-mean(Goal.camber)).^2); %5,0.1
R(3) = sum((Goal.HubTrackWidth - Real.HubTrackWidth).^2)/sum((Goal.HubTrackWidth-mean(Goal.HubTrackWidth)).^2);%40-50,1
R(4) = sum((Goal.HubRCH - Real.HubRCH).^2)/sum((Goal.HubRCH-mean(Goal.HubRCH)).^2);%200,10
R(5) = sum((Goal.WankTrackWidth - Real.WankTrackWidth).^2)/sum((Goal.WankTrackWidth-mean(Goal.WankTrackWidth)).^2);%10-20,1
R(6) = sum((Goal.WankRCH - Real.WankRCH).^2)/sum((Goal.WankRCH-mean(Goal.WankRCH)).^2);%100,10
R(7) = sum((Goal.WankRCL - Real.WankRCL).^2)/sum((Goal.WankRCL-mean(Goal.WankRCL)).^2);%1800-2000,
R(8) = sum((Goal.EinTrackWidth - Real.EinTrackWidth).^2)/sum((Goal.EinTrackWidth-mean(Goal.EinTrackWidth)).^2);%25,1
R(9) = sum((Goal.EinRCH - Real.EinRCH).^2)/sum((Goal.EinRCH-mean(Goal.EinRCH)).^2);%150,10
R(10) = sum((Goal.EinRCL - Real.EinRCL).^2)/sum((Goal.EinRCL-mean(Goal.EinRCL)).^2);%1400,1
R(11) = sum((Goal.Lenktoe - Real.Lenktoe).^2)/sum((Goal.Lenktoe-mean(Goal.Lenktoe)).^2);%80-90
R(12) = sum((Goal.Lenkcamber - Real.Lenkcamber).^2)/sum((Goal.Lenkcamber-mean(Goal.Lenkcamber)).^2);%10
R(13) = sum((Goal.LenkTrackWidth - Real.LenkTrackWidth).^2)/sum((Goal.LenkTrackWidth-mean(Goal.LenkTrackWidth)).^2);%60
R(14) = sum((Goal.LenkRadlenkwin - Real.LenkRadlenkwin).^2)/sum((Goal.LenkRadlenkwin-mean(Goal.LenkRadlenkwin)).^2);%80
R(15) = sum((Goal.LenkSpurdiff - Real.LenkSpurdiff).^2)/sum((Goal.LenkSpurdiff-mean(Goal.LenkSpurdiff)).^2);%4

Judgement(i,:) = R;
co = co+12;
end