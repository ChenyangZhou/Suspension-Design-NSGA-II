function [ScReal, ScGoal] = ScData(Real,Goal,n)

s = sqrt(sum((Real-mean(Real)).^2 + (Goal-mean(Goal)).^2)/n);
ScReal = (Real-mean(Real))./s;
ScGoal = (Goal-mean(Goal))./s;

end
