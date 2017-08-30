%% S 01
R(1) = sum((GoalToe01 - RealToe01).^2)/sum((RealToe01-mean(RealToe01)).^2);

RG(1) = sum((GoalToe01 - RealToe01).^2)/sum((GoalToe01-mean(GoalToe01)).^2);

x = [GoalToe01 RealToe01]';
CorrDist(1) = pdist(x,'correlation');
AbsCorr(1) =1 - (sum(abs((GoalToe01-mean(GoalToe01)).*(RealToe01-mean(RealToe01)))))/sqrt(sum((RealToe01-mean(RealToe01)).^2) * sum((GoalToe01-mean(GoalToe01)).^2));
Cosin(1) = pdist(x,'cosine');
CrSelf(1) = max(xcorr(GoalToe01,RealToe01,'none'))/sqrt(max(xcorr(GoalToe01,GoalToe01,'none'))*max(xcorr(RealToe01,RealToe01,'none')));

AdCos(1)=AdCosin(GoalToe01,RealToe01);

[ScRealToe01, ScGoalToe01] = ScData(RealToe01,GoalToe01,101);
ScSum(1) = sum(abs(ScRealToe01-ScGoalToe01));
ScEuCli(1) = sqrt(sum((ScRealToe01-ScGoalToe01).^2));
MxDis(1) = max(abs(ScRealToe01-ScGoalToe01));

subplot(2,4,1)
plot(-50:50,GoalToe01,'r');
hold on
plot(-50:50,RealToe01,'g');
hold off
title('Toe','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('Angle/Degree','FontSize',20);
set(gca,'FontSize',20);
grid on
%% S 02
R(2) = sum((GoalToe02 - RealToe02).^2)/sum((RealToe02-mean(RealToe02)).^2);

RG(2) = sum((GoalToe02 - RealToe02).^2)/sum((GoalToe02-mean(GoalToe02)).^2);

x = [GoalToe02 RealToe02]';
CorrDist(2) = pdist(x,'correlation');
AbsCorr(2) = 1 - (sum(abs((GoalToe02-mean(GoalToe02)).*(RealToe02-mean(RealToe02)))))/sqrt(sum((RealToe02-mean(RealToe02)).^2) * sum((GoalToe02-mean(GoalToe02)).^2));
Cosin(2) = pdist(x,'cosine');
CrSelf(2) = max(xcorr(GoalToe02,RealToe02,'none'))/sqrt(max(xcorr(GoalToe02,GoalToe02,'none'))*max(xcorr(RealToe02,RealToe02,'none')));

AdCos(2)=AdCosin(GoalToe02,RealToe02);

[ScRealToe02, ScGoalToe02] = ScData(RealToe02,GoalToe02,101);
ScSum(2) = sum(abs(ScRealToe02-ScGoalToe02));
ScEuCli(2) = sqrt(sum((ScRealToe02-ScGoalToe02).^2));
MxDis(2) = max(abs(ScRealToe02-ScGoalToe02));

subplot(2,4,2)
plot(-50:50,GoalToe02,'r');
hold on
plot(-50:50,RealToe02,'g');
hold off
title('Toe','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('Angle/Degree','FontSize',20);
set(gca,'FontSize',20);
grid on
%% S 03
R(3) = sum((GoalToe03 - RealToe03).^2)/sum((RealToe03-mean(RealToe03)).^2);

RG(3) = sum((GoalToe03 - RealToe03).^2)/sum((GoalToe03-mean(GoalToe03)).^2);

x = [GoalToe03 RealToe03]';
CorrDist(3) = pdist(x,'correlation');
AbsCorr(3) = 1 - (sum(abs((GoalToe03-mean(GoalToe03)).*(RealToe03-mean(RealToe03)))))/sqrt(sum((RealToe03-mean(RealToe03)).^2) * sum((GoalToe03-mean(GoalToe03)).^2));
Cosin(3) = pdist(x,'cosine');
CrSelf(3) = max(xcorr(GoalToe03,RealToe03,'none'))/sqrt(max(xcorr(GoalToe03,GoalToe03,'none'))*max(xcorr(RealToe03,RealToe03,'none')));

AdCos(3)=AdCosin(GoalToe03,RealToe03);

[ScRealToe03, ScGoalToe03] = ScData(RealToe03,GoalToe03,101);
ScSum(3) = sum(abs(ScRealToe03-ScGoalToe03));
ScEuCli(3) = sqrt(sum((ScRealToe03-ScGoalToe03).^2));
MxDis(3) = max(abs(ScRealToe03-ScGoalToe03));

subplot(2,4,3)
plot(-50:50,GoalToe03,'r');
hold on
plot(-50:50,RealToe03,'g');
hold off
title('Toe','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('Angle/Degree','FontSize',20);
set(gca,'FontSize',20);
grid on

%% S 04
R(4) = sum((GoalTrack03 - RealTrack03).^2)/sum((RealTrack03-mean(RealTrack03)).^2);

RG(4) = sum((GoalTrack03 - RealTrack03).^2)/sum((GoalTrack03-mean(GoalTrack03)).^2);

x = [GoalTrack03 RealTrack03]';
CorrDist(4) = pdist(x,'correlation');
AbsCorr(4) = 1 - (sum(abs((GoalTrack03-mean(GoalTrack03)).*(RealTrack03-mean(RealTrack03)))))/sqrt(sum((RealTrack03-mean(RealTrack03)).^2) * sum((GoalTrack03-mean(GoalTrack03)).^2));
Cosin(4) = pdist(x,'cosine');
CrSelf(4) = max(xcorr(GoalTrack03,RealTrack03,'none'))/sqrt(max(xcorr(GoalTrack03,GoalTrack03,'none'))*max(xcorr(RealTrack03,RealTrack03,'none')));

AdCos(4)=AdCosin(GoalTrack03,RealTrack03);

[ScRealTrack03, ScGoalTrack03] = ScData(RealTrack03,GoalTrack03,101);
ScSum(4) = sum(abs(ScRealTrack03-ScGoalTrack03));
ScEuCli(4) = sqrt(sum((ScRealTrack03-ScGoalTrack03).^2));
MxDis(4) = max(abs(ScRealTrack03-ScGoalTrack03));


subplot(2,4,4)
plot(-50:50,GoalTrack03,'r');
hold on
plot(-50:50,RealTrack03,'g');
hold off
title('Track Width','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('Track Width/mm','FontSize',20);
set(gca,'FontSize',20);
grid on
%% S 05
 R(5) = sum((GoalRCH04 - RealRCH04).^2)/sum((RealRCH04-mean(RealRCH04)).^2);
 
 RG(5) = sum((GoalRCH04 - RealRCH04).^2)/sum((GoalRCH04-mean(GoalRCH04)).^2);


x = [GoalRCH04 RealRCH04]';
CorrDist(5) = pdist(x,'correlation');
AbsCorr(5) = 1 - (sum(abs((GoalRCH04-mean(GoalRCH04)).*(RealRCH04-mean(RealRCH04)))))/sqrt(sum((RealRCH04-mean(RealRCH04)).^2) * sum((GoalRCH04-mean(GoalRCH04)).^2));
Cosin(5) = pdist(x,'cosine');
CrSelf(5) = max(xcorr(GoalRCH04,RealRCH04,'none'))/sqrt(max(xcorr(GoalRCH04,GoalRCH04,'none'))*max(xcorr(RealRCH04,RealRCH04,'none')));

AdCos(5)=AdCosin(GoalRCH04,RealRCH04);

[ScRealRCH04, ScGoalRCH04] = ScData(RealRCH04,GoalRCH04,201);
ScSum(5) = sum(abs(ScRealRCH04-ScGoalRCH04));
ScEuCli(5) = sqrt(sum((ScRealRCH04-ScGoalRCH04).^2));
MxDis(5) = max(abs(ScRealRCH04-ScGoalRCH04));

subplot(2,4,5)
plot(-100:100,GoalRCH04,'r');
hold on
plot(-100:100,RealRCH04,'g');
hold off
title('RCH','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('RCH/mm','FontSize',20);
set(gca,'FontSize',20);
grid on
%% S 06
 R(6) = sum((GoalRCL04 - RealRCL04).^2)/sum((RealRCL04-mean(RealRCL04)).^2);
 
 RG(6) = sum((GoalRCL04 - RealRCL04).^2)/sum((GoalRCL04-mean(GoalRCL04)).^2);
 
x = [GoalRCL04 RealRCL04]';
CorrDist(6) = pdist(x,'correlation');
AbsCorr(6) = 1 - (sum(abs((GoalRCL04-mean(GoalRCL04)).*(RealRCL04-mean(RealRCL04)))))/sqrt(sum((RealRCL04-mean(RealRCL04)).^2) * sum((GoalRCL04-mean(GoalRCL04)).^2));
Cosin(6) = pdist(x,'cosine');
CrSelf(6) = max(xcorr(GoalRCL04,RealRCL04,'none'))/sqrt(max(xcorr(GoalRCL04,GoalRCL04,'none'))*max(xcorr(RealRCL04,RealRCL04,'none')));

AdCos(6)=AdCosin(GoalRCL04,RealRCL04);

[ScRealRCL04, ScGoalRCL04] = ScData(RealRCL04,GoalRCL04,201);
ScSum(6) = sum(abs(ScRealRCL04-ScGoalRCL04));
ScEuCli(6) = sqrt(sum((ScRealRCL04-ScGoalRCL04).^2));
MxDis(6) = max(abs(ScRealRCL04-ScGoalRCL04));

subplot(2,4,6)
plot(-100:100,GoalRCL04,'r');
hold on
plot(-100:100,RealRCL04,'g');
hold off
title('RCL','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('RCL/mm','FontSize',20);
set(gca,'FontSize',20);
grid on
%% S 07
R(7) = sum((GoalCamber05 - RealCamber05).^2)/sum((RealCamber05-mean(RealCamber05)).^2);

RG(7) = sum((GoalCamber05 - RealCamber05).^2)/sum((GoalCamber05-mean(GoalCamber05)).^2);

x = [GoalCamber05 RealCamber05]';
CorrDist(7) = pdist(x,'correlation');
AbsCorr(7) = 1 - (sum(abs((GoalCamber05-mean(GoalCamber05)).*(RealCamber05-mean(RealCamber05)))))/sqrt(sum((RealCamber05-mean(RealCamber05)).^2) * sum((GoalCamber05-mean(GoalCamber05)).^2));
Cosin(7) = pdist(x,'cosine');
CrSelf(7) = max(xcorr(GoalCamber05,RealCamber05,'none'))/sqrt(max(xcorr(GoalCamber05,GoalCamber05,'none'))*max(xcorr(RealCamber05,RealCamber05,'none')));

AdCos(7)=AdCosin(GoalCamber05,RealCamber05);

[ScRealCamber05, ScGoalCamber05] = ScData(RealCamber05,GoalCamber05,101);
ScSum(7) = sum(abs(ScRealCamber05-ScGoalCamber05));
ScEuCli(7) = sqrt(sum((ScRealCamber05-ScGoalCamber05).^2));
MxDis(7) = max(abs(ScRealCamber05-ScGoalCamber05));

subplot(2,4,7)
plot(-50:50,GoalCamber05,'r');
hold on
plot(-50:50,RealCamber05,'g');
hold off
title('Camber','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('Camber/Degree','FontSize',20);
set(gca,'FontSize',20);
grid on
%% S 08
R(8) = sum((GoalCamber08 - RealCamber08).^2)/sum((RealCamber08-mean(RealCamber08)).^2);

RG(8) = sum((GoalCamber08 - RealCamber08).^2)/sum((GoalCamber08-mean(GoalCamber08)).^2);

x = [GoalCamber08 RealCamber08]';
CorrDist(8) = pdist(x,'correlation');
AbsCorr(8) = 1 - (sum(abs((GoalCamber08-mean(GoalCamber08)).*(RealCamber08-mean(RealCamber08)))))/sqrt(sum((RealCamber08-mean(RealCamber08)).^2) * sum((GoalCamber08-mean(GoalCamber08)).^2));
Cosin(8) = pdist(x,'cosine');
CrSelf(8) = max(xcorr(GoalCamber08,RealCamber08,'none'))/sqrt(max(xcorr(GoalCamber08,GoalCamber08,'none'))*max(xcorr(RealCamber08,RealCamber08,'none')));

AdCos(8)=AdCosin(GoalCamber08,RealCamber08);

[ScRealCamber08, ScGoalCamber08] = ScData(RealCamber08,GoalCamber08,201);
ScSum(8) = sum(abs(ScRealCamber08-ScGoalCamber08));
ScEuCli(8) = sqrt(sum((ScRealCamber08-ScGoalCamber08).^2));
MxDis(8) = max(abs(ScRealCamber08-ScGoalCamber08));

subplot(2,4,8)
plot(-100:100,GoalCamber08,'r');
hold on
plot(-100:100,RealCamber08,'g');
hold off
title('Camber','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('Camber/Degree','FontSize',20);
set(gca,'FontSize',20);
grid on
%% S 09
R(9) = sum((GoalTW - RealTW).^2)/sum((RealTW-mean(RealTW)).^2);

RG(9) = sum((GoalTW - RealTW).^2)/sum((GoalTW-mean(GoalTW)).^2);

x = [GoalTW RealTW]';
CorrDist(9) = pdist(x,'correlation');
AbsCorr(9) = 1 - (sum(abs((GoalTW-mean(GoalTW)).*(RealTW-mean(RealTW)))))/sqrt(sum((RealTW-mean(RealTW)).^2) * sum((GoalTW-mean(GoalTW)).^2));
Cosin(9) = pdist(x,'cosine');
CrSelf(9) = max(xcorr(GoalTW,RealTW,'none'))/sqrt(max(xcorr(GoalTW,GoalTW,'none'))*max(xcorr(RealTW,RealTW,'none')));

AdCos(9)=AdCosin(GoalTW,RealTW);

[ScRealTW, ScGoalTW] = ScData(RealTW,GoalTW,201);
ScSum(9) = sum(abs(ScRealTW-ScGoalTW));
ScEuCli(9) = sqrt(sum((ScRealTW-ScGoalTW).^2));
MxDis(9) = max(abs(ScRealTW-ScGoalTW));

figure
plot(-100:100,GoalTW,'r');
hold on
plot(-100:100,RealTW,'g');
hold off
title('Track Width','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('Track Width/mm','FontSize',20);
set(gca,'FontSize',20);
grid on

RandC = R + CorrDist;