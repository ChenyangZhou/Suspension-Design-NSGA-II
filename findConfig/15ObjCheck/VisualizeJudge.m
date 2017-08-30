% %
[Row,colum] = size(JudgementRwithGoal);
for i=1:Row
    plot(1:15,JudgementRwithGoal(i,:),'r');
    hold on
end
grid on

[Row,colum] = size(JudgementRwithCorr);
for i=1:Row
    plot(1:15,JudgementRwithCorr(i,:),'g');
    hold on
end

[Row,colum] = size(JudgementScSum);
for i=1:Row
    plot(1:15,JudgementScSum(i,:),'b');
    hold on
end

[Row,colum] = size(JudgeScEuCli);
for i=1:Row
    plot(1:15,JudgeScEuCli(i,:),'m');
    hold on
end

%%
figure

[Row,colum] = size(JudgementRwithGoal);
S = sum(JudgementRwithGoal,1)./Row;

    plot(1:15,S,'r');
    hold on
grid on

[Row,colum] = size(JudgementRwithCorr);
S = sum(JudgementRwithCorr,1)./Row;
    plot(1:15,S,'g');

 [Row,colum] = size(JudgementScSum);
S = sum(JudgementScSum,1)./Row;
    plot(1:15,S,'b');

[Row,colum] = size(JudgeScEuCli);    
S = sum(JudgeScEuCli,1)./Row;
    plot(1:15,S,'m');
    
title('Average Value of Objectives based on Obj.Fun','FontSize',24);
xlabel('Objective','FontSize',20);
ylabel('Objective Value','FontSize',20);
set(gca,'FontSize',20);
legend('RwithGoal','RwithCorr','ScSum','ScEucli');
hold off

%% plot yy AveFval and Time
AveFval(1) = mean(mean(JudgementRwithGoal));
AveFval(2) = mean(mean(JudgementRwithCorr));
AveFval(3) = mean(mean(JudgementScSum));
AveFval(4) = mean(mean(JudgeScEuCli));


Time(1) = TimeConsumRwithGoal;
Time(2) = TimeConsumRwithCorr;
Time(3) = TimeConsumScSum;
Time(4) = TimeConsumScEuCli;


figure
[AX,H1,H2] = plotyy(1:4,AveFval,1:4,Time);
% Hand1 = get(AX(1));
% Hand2 = get(AX(2));
grid on;
title('Average Objective Value','FontSize',24);
% xlabel('Population Size','FontSize',20);
legend('Ave.ObjVal','Time Cost');