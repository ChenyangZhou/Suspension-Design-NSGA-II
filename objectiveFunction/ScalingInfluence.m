[ScRealTrack03, ScGoalTrack03] = ScData(RealTrack03,GoalTrack03,101);

subplot(1,2,1)
plot(-50:50,GoalTrack03,'r');
hold on
plot(-50:50,RealTrack03,'g');
hold off
title('Before standardization','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('Track Width/mm','FontSize',20);
set(gca,'FontSize',20);
grid on


subplot(1,2,2)
plot(-50:50,ScGoalTrack03,'r');
hold on
plot(-50:50,ScRealTrack03,'g');
hold off
title('After standardization','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('Standardized Track Width/mm','FontSize',20);
set(gca,'FontSize',20);
grid on