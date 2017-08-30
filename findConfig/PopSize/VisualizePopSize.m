%%
% [Row,colum] = size(fvalPop100);
% for i=1:Row
%     plot(1:6,fvalPop100(i,:),'r');
%     hold on
% end
% grid on
% 
% [Row,colum] = size(fvalPop150);
% for i=1:Row
%     plot(1:6,fvalPop150(i,:),'g');
%     hold on
% end
% 
% [Row,colum] = size(fvalPop200);
% for i=1:Row
%     plot(1:6,fvalPop200(i,:),'b');
%     hold on
% end
% 
% [Row,colum] = size(fvalPop250);
% for i=1:Row
%     plot(1:6,fvalPop250(i,:),'m');
%     hold on
% end
% 
% [Row,colum] = size(fvalPop300);
% for i=1:Row
%     plot(1:6,fvalPop300(i,:),'k');
%     hold on
% end
% hold off
%%
figure
[Row,colum] = size(fvalPop100);
S = sum(fvalPop100,1)./Row;

    plot(1:6,S,'r');
    hold on
grid on

[Row,colum] = size(fvalPop150);
S = sum(fvalPop150,1)./Row;
    plot(1:6,S,'g');

 [Row,colum] = size(fvalPop200);
S = sum(fvalPop200,1)./Row;
    plot(1:6,S,'b');

[Row,colum] = size(fvalPop250);    
S = sum(fvalPop250,1)./Row;
    plot(1:6,S,'m');
    
[Row,colum] = size(fvalPop300);    
S = sum(fvalPop300,1)./Row;
    plot(1:6,S,'k');
    
title('Average Value of Objectives based on PopSize','FontSize',24);
xlabel('Objective','FontSize',20);
ylabel('Objective Value','FontSize',20);
set(gca,'FontSize',20);
legend('PopSize100','PopSize150','PopSize200','PopSize250','PopSize300');
hold off

%% plot yy AveFval and Time
AveFval(1) = mean(mean(fvalPop100));
AveFval(2) = mean(mean(fvalPop150));
AveFval(3) = mean(mean(fvalPop200));
AveFval(4) = mean(mean(fvalPop250));
AveFval(5) = mean(mean(fvalPop300));

Time(1) = TimeConsumPop100;
Time(2) = TimeConsumPop150;
Time(3) = TimeConsumPop200;
Time(4) = TimeConsumPop250;
Time(5) = TimeConsumPop300;

figure
[AX,H1,H2] = plotyy(100:50:300,AveFval,100:50:300,Time);
% Hand1 = get(AX(1));
% Hand2 = get(AX(2));
grid on;
title('Average Objective Value','FontSize',24);
% xlabel('Population Size','FontSize',20);
legend('Ave.ObjVal','Time Cost')