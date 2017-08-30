% %
% [Row,colum] = size(fvalMaxGen100);
% for i=1:Row
%     plot(1:6,fvalMaxGen100(i,:),'r');
%     hold on
% end
% grid on
% 
% [Row,colum] = size(fvalMaxGen150);
% for i=1:Row
%     plot(1:6,fvalMaxGen150(i,:),'g');
%     hold on
% end
% 
% [Row,colum] = size(fvalMaxGen200);
% for i=1:Row
%     plot(1:6,fvalMaxGen200(i,:),'b');
%     hold on
% end
% 
% [Row,colum] = size(fvalMaxGen300);
% for i=1:Row
%     plot(1:6,fvalMaxGen300(i,:),'m');
%     hold on
% end
% 
% [Row,colum] = size(fvalMaxGen400);
% for i=1:Row
%     plot(1:6,fvalMaxGen400(i,:),'k');
%     hold on
% end
% 
% [Row,colum] = size(fvalMaxGen500);
% for i=1:Row
%     plot(1:6,fvalMaxGen500(i,:),'Color',[1,0.6,0]);
%     hold on
% end
% 
% [Row,colum] = size(fvalMaxGen600);
% for i=1:Row
%     plot(1:6,fvalMaxGen600(i,:),'c');
%     hold on
% end

%%
figure

[Row,colum] = size(fvalMaxGen100);
S = sum(fvalMaxGen100,1)./Row;

    plot(1:6,S,'r');
    hold on
grid on

[Row,colum] = size(fvalMaxGen150);
S = sum(fvalMaxGen150,1)./Row;
    plot(1:6,S,'g');

 [Row,colum] = size(fvalMaxGen200);
S = sum(fvalMaxGen200,1)./Row;
    plot(1:6,S,'b');

[Row,colum] = size(fvalMaxGen300);    
S = sum(fvalMaxGen300,1)./Row;
    plot(1:6,S,'m');
    
[Row,colum] = size(fvalMaxGen400);    
S = sum(fvalMaxGen400,1)./Row;
    plot(1:6,S,'k');
    
    [Row,colum] = size(fvalMaxGen500);    
S = sum(fvalMaxGen500,1)./Row;
    plot(1:6,S,'Color',[1,0.6,0]);
  
[Row,colum] = size(fvalMaxGen600);    
S = sum(fvalMaxGen600,1)./Row;
    plot(1:6,S,'c');
    
title('Average Value of Objectives based on max Generations','FontSize',24);
xlabel('Objective','FontSize',20);
ylabel('Objective Value','FontSize',20);
set(gca,'FontSize',20);
legend('MaxGen100','MaxGen150','MaxGen200','MaxGen300','MaxGen400','MaxGen500','MaxGen600');
hold off

%% plot yy AveFval and Time
AveFval(1) = mean(mean(fvalMaxGen100));
AveFval(2) = mean(mean(fvalMaxGen150));
AveFval(3) = mean(mean(fvalMaxGen200));
AveFval(4) = mean(mean(fvalMaxGen300));
AveFval(5) = mean(mean(fvalMaxGen400));
AveFval(6) = mean(mean(fvalMaxGen500));
AveFval(7) = mean(mean(fvalMaxGen600));

Time(1) = TimeConsumMaxGen100;
Time(2) = TimeConsumMaxGen150;
Time(3) = TimeConsumMaxGen200;
Time(4) = TimeConsumMaxGen300;
Time(5) = TimeConsumMaxGen400;
Time(6) = TimeConsumMaxGen500;
Time(7) = TimeConsumMaxGen600;

figure
[AX,H1,H2] = plotyy([100 150 200:100:600],AveFval,[100 150 200:100:600],Time);
% Hand1 = get(AX(1));
% Hand2 = get(AX(2));
grid on;
title('Average Objective Value','FontSize',24);
% xlabel('Population Size','FontSize',20);
legend('Ave.ObjVal','Time Cost');