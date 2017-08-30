% %%
% [Row,colum] = size(fvalMaxEva1000);
% for i=1:Row
%     plot(1:6,fvalMaxEva1000(i,:),'r');
%     hold on
% end
% grid on
% 
% [Row,colum] = size(fvalMaxEva1500);
% for i=1:Row
%     plot(1:6,fvalMaxEva1500(i,:),'g');
%     hold on
% end
% 
% [Row,colum] = size(fvalMaxEva2000);
% for i=1:Row
%     plot(1:6,fvalMaxEva2000(i,:),'b');
%     hold on
% end
% 
% [Row,colum] = size(fvalMaxEva2500);
% for i=1:Row
%     plot(1:6,fvalMaxEva2500(i,:),'m');
%     hold on
% end
% 
% [Row,colum] = size(fvalMaxEva3000);
% for i=1:Row
%     plot(1:6,fvalMaxEva3000(i,:),'k');
%     hold on
% end
% 
% [Row,colum] = size(fvalMaxEva3500);
% for i=1:Row
%     plot(1:6,fvalMaxEva3500(i,:),'y');
%     hold on
% end

%%
figure

[Row,colum] = size(fvalMaxEva1000);
S = sum(fvalMaxEva1000,1)./Row;

    plot(1:6,S,'r');
    hold on
grid on

[Row,colum] = size(fvalMaxEva1500);
S = sum(fvalMaxEva1500,1)./Row;
    plot(1:6,S,'g');

 [Row,colum] = size(fvalMaxEva2000);
S = sum(fvalMaxEva2000,1)./Row;
    plot(1:6,S,'b');

[Row,colum] = size(fvalMaxEva2500);    
S = sum(fvalMaxEva2500,1)./Row;
    plot(1:6,S,'m');
    
[Row,colum] = size(fvalMaxEva3000);    
S = sum(fvalMaxEva3000,1)./Row;
    plot(1:6,S,'k');
    
    [Row,colum] = size(fvalMaxEva3500);    
S = sum(fvalMaxEva3500,1)./Row;
    plot(1:6,S,'Color',[1,0.6,0]);
    
    title('Average Value of Objectives based on Max Evaluation','FontSize',24);
xlabel('Objective','FontSize',20);
ylabel('Objective Value','FontSize',20);
set(gca,'FontSize',20);
legend('1000','1500','2000','2500','3000','3500');
hold off

    %% plot yy AveFval and Time
AveFval(1) = mean(mean(fvalMaxEva1000));
AveFval(2) = mean(mean(fvalMaxEva1500));
AveFval(3) = mean(mean(fvalMaxEva2000));
AveFval(4) = mean(mean(fvalMaxEva2500));
AveFval(5) = mean(mean(fvalMaxEva3000));
AveFval(6) = mean(mean(fvalMaxEva3500));

Time(1) = TimeConsumMaxEva1000;
Time(2) = TimeConsumMaxEva1500;
Time(3) = TimeConsumMaxEva2000;
Time(4) = TimeConsumMaxEva2500;
Time(5) = TimeConsumMaxEva3000;
Time(6) = TimeConsumMaxEva3500;

figure
[AX,H1,H2] = plotyy(1000:500:3500,AveFval,1000:500:3500,Time);
% Hand1 = get(AX(1));
% Hand2 = get(AX(2));
grid on;
title('Average Objective Value based on Max Evaluation','FontSize',24);
% xlabel('Population Size','FontSize',20);
legend('Ave.ObjVal','Time Cost')
