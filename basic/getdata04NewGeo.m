 function Real=getdata04NewGeo(x)

 global Excel
 
 ParSet = x;
 data = Excel.Run('GetData',ParSet);

%***************  when data need to be written in Excel 
% Realdata.Hubfedern.toe = data(:,2);
% Realdata.Hubfedern.camber = data(:,3);
% Realdata.Hubfedern.TrackWidth = data(:,6);
%  
%  Real.toe = cell2mat(Realdata.Hubfedern.toe(1:101));
%  Real.camber = cell2mat(Realdata.Hubfedern.camber(1:101));
%  Real.HubTrackWidth = cell2mat(Realdata.Hubfedern.TrackWidth(1:101));
 
%*********** when need not
Real.toe = data(:,2);
Real.camber = data(:,3);
Real.HubTrackWidth = data(:,6);