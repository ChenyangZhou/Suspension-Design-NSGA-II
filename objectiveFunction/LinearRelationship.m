
plot(GoalToe01,RealToe01);
xlabel('Goal Toe Angle/Degree','FontSize',20);
ylabel('Real Toe Angle/Degree','FontSize',20);
set(gca,'FontSize',20);
grid on

figure
subplot(1,3,1)
plot(GoalToe02,RealToe02)
xlabel('Goal Toe Angle/Degree','FontSize',20);
ylabel('Real Toe Angle/Degree','FontSize',20);
set(gca,'FontSize',20);
grid on

subplot(1,3,2)
plot(GoalToe03,RealToe03)
xlabel('Goal Toe Angle/Degree','FontSize',20);
ylabel('Real Toe Angle/Degree','FontSize',20);
set(gca,'FontSize',20);
grid on

subplot(1,3,3)
plot(GoalTrack03,RealTrack03)
xlabel('Goal Track Width/mm','FontSize',20);
ylabel('Real Track Width/mm','FontSize',20);
set(gca,'FontSize',20);
grid on