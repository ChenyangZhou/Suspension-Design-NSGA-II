% objective function
function Obj = ObjValNeuFg2(x)
% assign Obj according to different judge criteria

global Goal
ParSet = reshape(x,11,3);

%%      
Real = getdataNeuFg(ParSet);

%% R square

% In Wikipedia, is y or f the goal value
% tried with f to be the goal value, R can be larger than 1
% R(1) = sum((Goal.toe - Real.toe).^2)/sum((Real.toe-mean(Real.toe)).^2);%*10;%2-3,0.1
% R(2) = sum((Goal.camber - Real.camber).^2)/sum((Real.camber-mean(Real.camber)).^2); %5,0.1
% R(3) = sum((Goal.HubTrackWidth - Real.HubTrackWidth).^2)/sum((Real.HubTrackWidth-mean(Real.HubTrackWidth)).^2);%40-50,1
% R(4) = sum((Goal.HubRCH - Real.HubRCH).^2)/sum((Real.HubRCH-mean(Real.HubRCH)).^2);%200,10
% 
% % R(5) = sum((Goal.WankRCH - Real.WankRCH).^2)/sum((Real.WankRCH-mean(Real.WankRCH)).^2);%100,10
% % R(6) = sum((Goal.WankRCL - Real.WankRCL).^2)/sum((Real.WankRCL-mean(Real.WankRCL)).^2);%1800-2000,
% 
% % R(7) = sum((Goal.EinRCH - Real.EinRCH).^2)/sum((Real.EinRCH-mean(Real.EinRCH)).^2);%150,10
% % R(8) = sum((Goal.EinRCL - Real.EinRCL).^2)/sum((Real.EinRCL-mean(Real.EinRCL)).^2);%1400,1
% 
% R(5) = sum((Goal.LenkToe - Real.LenkToe).^2)/sum((Real.LenkToe-mean(Real.LenkToe)).^2);%150,10
% R(6) = sum((Goal.LenkCamber - Real.LenkCamber).^2)/sum((Real.LenkCamber-mean(Real.LenkCamber)).^2);%1400,1

% if y is goal
% R(1) = sum((Goal.toe - Real.toe).^2)/sum((Goal.toe-mean(Goal.toe)).^2);%*10;%2-3,0.1
% R(2) = sum((Goal.camber - Real.camber).^2)/sum((Goal.camber-mean(Goal.camber)).^2); %5,0.1
% R(3) = sum((Goal.HubTrackWidth - Real.HubTrackWidth).^2)/sum((Goal.HubTrackWidth-mean(Goal.HubTrackWidth)).^2);%40-50,1
% R(4) = sum((Goal.HubRCH - Real.HubRCH).^2)/sum((Goal.HubRCH-mean(Goal.HubRCH)).^2);%200,10
% 
% R(5) = sum((Goal.WankRCH - Real.WankRCH).^2)/sum((Goal.WankRCH-mean(Goal.WankRCH)).^2);%100,10
% R(6) = sum((Goal.WankRCL - Real.WankRCL).^2)/sum((Goal.WankRCL-mean(Goal.WankRCL)).^2);%1800-2000,
% 
% R(7) = sum((Goal.EinRCH - Real.EinRCH).^2)/sum((Goal.EinRCH-mean(Goal.EinRCH)).^2);%150,10
% R(8) = sum((Goal.EinRCL - Real.EinRCL).^2)/sum((Goal.EinRCL-mean(Goal.EinRCL)).^2);%1400,1
% 

%% y as goal , for 3d problem

R(1) = sum((Goal.toe - Real.toe).^2)/sum((Goal.toe-mean(Goal.toe)).^2);%*10;%2-3,0.1
R(2) = sum((Goal.camber - Real.camber).^2)/sum((Goal.camber-mean(Goal.camber)).^2); %5,0.1
R(3) = sum((Goal.HubTrackWidth - Real.HubTrackWidth).^2)/sum((Goal.HubTrackWidth-mean(Goal.HubTrackWidth)).^2);%40-50,1
R(4) = sum((Goal.HubRCH - Real.HubRCH).^2)/sum((Goal.HubRCH-mean(Goal.HubRCH)).^2);%200,10
R(5) = sum((Goal.LenkToe - Real.LenkToe).^2)/sum((Goal.LenkToe-mean(Goal.LenkToe)).^2);%150,10
R(6) = sum((Goal.LenkCamber - Real.LenkCamber).^2)/sum((Goal.LenkCamber-mean(Goal.LenkCamber)).^2);%1400,1
%% correlation pdist 'correlation'

 % function return value  CorrDist
% x = [Goal.toe Real.toe]';
% CorrDist(1) = pdist(x,'correlation');
% 
% x = [Goal.camber Real.camber]';
% CorrDist(2) = pdist(x,'correlation');
% 
% x = [Goal.HubTrackWidth Real.HubTrackWidth]';
% CorrDist(3) = pdist(x,'correlation');
% 
% x = [Goal.HubRCH Real.HubRCH]';
% CorrDist(4) = pdist(x,'correlation');
% 
% 
% x = [Goal.WankRCH Real.WankRCH]';
% CorrDist(5) = pdist(x,'correlation');
% 
% x = [Goal.WankRCL Real.WankRCL]';
% CorrDist(6) = pdist(x,'correlation');


% x = [Goal.EinRCH Real.EinRCH]';
% CorrDist(7) = pdist(x,'correlation');
% 
% x = [Goal.EinRCL Real.EinRCL]';
% CorrDist(8) = pdist(x,'correlation');

%%
% [ScGoal.toe, ScReal.toe] = ScData(Goal.toe,Real.toe,201);
% ScSum(1) = sum(abs(ScGoal.toe-ScReal.toe));
% 
% [ScGoal.camber, ScReal.camber] = ScData(Goal.camber,Real.camber,201);
% ScSum(2) = sum(abs(ScGoal.camber-ScReal.camber));
% 
% [ScGoal.HubTrackWidth, ScReal.HubTrackWidth] = ScData(Goal.HubTrackWidth,Real.HubTrackWidth,201);
% ScSum(3) = sum(abs(ScGoal.HubTrackWidth-ScReal.HubTrackWidth));
% 
% [ScGoal.HubRCH, ScReal.HubRCH] = ScData(Goal.HubRCH,Real.HubRCH,201);
% ScSum(4) = sum(abs(ScGoal.HubRCH-ScReal.HubRCH));
% 
% % [ScGoal.WankRCH, ScReal.WankRCH] = ScData(Goal.WankRCH,Real.WankRCH,201);
% % ScSum(5) = sum(abs(ScGoal.WankRCH-ScReal.WankRCH));
% % 
% % [ScGoal.WankRCL, ScReal.WankRCL] = ScData(Goal.WankRCL,Real.WankRCL,201);
% % ScSum(6) = sum(abs(ScGoal.WankRCL-ScReal.WankRCL));
% 
% [ScGoal.LenkToe, ScReal.LenkToe] = ScData(Goal.LenkToe,Real.LenkToe,201);
% ScSum(5) = sum(abs(ScGoal.LenkToe-ScReal.LenkToe));
% 
% [ScGoal.LenkCamber, ScReal.LenkCamber] = ScData(Goal.LenkCamber,Real.LenkCamber,201);
% ScSum(6) = sum(abs(ScGoal.LenkCamber-ScReal.LenkCamber));
% % Obj = R+CorrDist;

Obj = R;

end