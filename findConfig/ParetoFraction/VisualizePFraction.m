%%
% [Row,colum] = size(fvalPFraction01);
% for i=1:Row
%     plot(1:6,fvalPFraction01(i,:),'r');
%     hold on
% end
% grid on
% 
% [Row,colum] = size(fvalPFraction015);
% for i=1:Row
%     plot(1:6,fvalPFraction015(i,:),'g');
%     hold on
% end
% 
% [Row,colum] = size(fvalPFraction02);
% for i=1:Row
%     plot(1:6,fvalPFraction02(i,:),'b');
%     hold on
% end
% 
% [Row,colum] = size(fvalPFraction025);
% for i=1:Row
%     plot(1:6,fvalPFraction025(i,:),'m');
%     hold on
% end
% 
% [Row,colum] = size(fvalPFraction03);
% for i=1:Row
%     plot(1:6,fvalPFraction03(i,:),'k');
%     hold on
% end
% 
% [Row,colum] = size(fvalPFraction035);
% for i=1:Row
%     plot(1:6,fvalPFraction035(i,:),'Color',[1,0.6,0]);
%     hold on
% end

%%
figure

[Row,colum] = size(fvalPFraction01);
S = sum(fvalPFraction01,1)./Row;

    plot(1:6,S,'r');
    hold on
grid on

[Row,colum] = size(fvalPFraction015);
S = sum(fvalPFraction015,1)./Row;
    plot(1:6,S,'g');

 [Row,colum] = size(fvalPFraction02);
S = sum(fvalPFraction02,1)./Row;
    plot(1:6,S,'b');

[Row,colum] = size(fvalPFraction025);    
S = sum(fvalPFraction025,1)./Row;
    plot(1:6,S,'m');
    
[Row,colum] = size(fvalPFraction03);    
S = sum(fvalPFraction03,1)./Row;
    plot(1:6,S,'k');
    
    [Row,colum] = size(fvalPFraction035);    
S = sum(fvalPFraction035,1)./Row;
    plot(1:6,S,'Color',[1,0.6,0]);

    title('Average Value of Objectives based on Pareto Fraction','FontSize',24);
xlabel('Objective','FontSize',20);
ylabel('Objective Value','FontSize',20);
set(gca,'FontSize',20);
legend('0.10','0.15','0.20','0.25','0.30','0.35');
hold off

    %% plot yy AveFval and Time
AveFval(1) = mean(mean(fvalPFraction01));
AveFval(2) = mean(mean(fvalPFraction015));
AveFval(3) = mean(mean(fvalPFraction02));
AveFval(4) = mean(mean(fvalPFraction025));
AveFval(5) = mean(mean(fvalPFraction03));
AveFval(6) = mean(mean(fvalPFraction035));

Time(1) = TimeConsumPFraction01;
Time(2) = TimeConsumPFraction015;
Time(3) = TimeConsumPFraction02;
Time(4) = TimeConsumPFraction025;
Time(5) = TimeConsumPFraction03;
Time(6) = TimeConsumPFraction035;

figure
[AX,H1,H2] = plotyy(0.1:0.05:0.35,AveFval,0.1:0.05:0.35,Time);
% Hand1 = get(AX(1));
% Hand2 = get(AX(2));
grid on;
title('Average Objective Value based on Pareto Fraction','FontSize',24);
% xlabel('Population Size','FontSize',20);
legend('Ave.ObjVal','Time Cost')
