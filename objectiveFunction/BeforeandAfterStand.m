subplot(1,2,1)
 plot(-50:1:50,GoalTrack03,'r',-50:1:50,RealTrack03,'g');
 legend('Goal','Real');
 grid on
 title('Before Standardization','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('Track Width/mm','FontSize',20);
set(gca,'FontSize',20);

 subplot(1,2,2)
 plot(-50:1:50,ScGoalTrack03,'r',-50:1:50,ScRealTrack03,'g');
 legend('Goal','Real');
 grid on
  title('After Standardization','FontSize',24);
xlabel('Wheel Travel/mm','FontSize',20);
ylabel('Track Width/mm','FontSize',20);
set(gca,'FontSize',20);