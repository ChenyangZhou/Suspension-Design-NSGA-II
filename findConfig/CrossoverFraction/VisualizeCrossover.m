%%
% [Row,colum] = size(fvalCrossFraction065);
% for i=1:Row
%     plot(1:6,fvalCrossFraction065(i,:),'r');
%     hold on
% end
% grid on
% 
% [Row,colum] = size(fvalCrossFraction070);
% for i=1:Row
%     plot(1:6,fvalCrossFraction070(i,:),'g');
%     hold on
% end
% 
% [Row,colum] = size(fvalCrossFraction075);
% for i=1:Row
%     plot(1:6,fvalCrossFraction075(i,:),'b');
%     hold on
% end
% 
% [Row,colum] = size(fvalCrossFraction080);
% for i=1:Row
%     plot(1:6,fvalCrossFraction080(i,:),'m');
%     hold on
% end
% 
% [Row,colum] = size(fvalCrossFraction085);
% for i=1:Row
%     plot(1:6,fvalCrossFraction085(i,:),'k');
%     hold on
% end
% 
% [Row,colum] = size(fvalCrossFraction090);
% for i=1:Row
%     plot(1:6,fvalCrossFraction090(i,:),'Color',[1,0.6,0]);
%     hold on
% end

%%
figure

[Row,colum] = size(fvalCrossFraction065);
S = sum(fvalCrossFraction065,1)./Row;

    plot(1:6,S,'r');
    hold on
grid on

[Row,colum] = size(fvalCrossFraction070);
S = sum(fvalCrossFraction070,1)./Row;
    plot(1:6,S,'g');

 [Row,colum] = size(fvalCrossFraction075);
S = sum(fvalCrossFraction075,1)./Row;
    plot(1:6,S,'b');

[Row,colum] = size(fvalCrossFraction080);    
S = sum(fvalCrossFraction080,1)./Row;
    plot(1:6,S,'m');
    
[Row,colum] = size(fvalCrossFraction085);    
S = sum(fvalCrossFraction085,1)./Row;
    plot(1:6,S,'k');
    
    [Row,colum] = size(fvalCrossFraction090);    
S = sum(fvalCrossFraction090,1)./Row;
    plot(1:6,S,'Color',[1,0.6,0]);
    
   title('Average Value of Objectives based on Crossover Fraction','FontSize',24);
xlabel('Objective','FontSize',20);
ylabel('Objective Value','FontSize',20);
set(gca,'FontSize',20);
legend('0.65','0.70','0.75','0.80','0.85','0.90');
hold off
    %% plot yy AveFval and Time
AveFval(1) = mean(mean(fvalCrossFraction065));
AveFval(2) = mean(mean(fvalCrossFraction070));
AveFval(3) = mean(mean(fvalCrossFraction075));
AveFval(4) = mean(mean(fvalCrossFraction080));
AveFval(5) = mean(mean(fvalCrossFraction085));
AveFval(6) = mean(mean(fvalCrossFraction090));

Time(1) = TimeConsumCrossFraction065;
Time(2) = TimeConsumCrossFraction070;
Time(3) = TimeConsumCrossFraction075;
Time(4) = TimeConsumCrossFraction080;
Time(5) = TimeConsumCrossFraction085;
Time(6) = TimeConsumCrossFraction090;

figure
[AX,H1,H2] = plotyy(0.65:0.05:0.90,AveFval,0.65:0.05:0.90,Time);
% Hand1 = get(AX(1));
% Hand2 = get(AX(2));
grid on;
title('Average Objective Value based on Crossover Fraction','FontSize',24);
% xlabel('Population Size','FontSize',20);
legend('Ave.ObjVal','Time Cost')
