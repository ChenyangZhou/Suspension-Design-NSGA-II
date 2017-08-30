function [x,fval,exitflag,output,population,score] = WritTxForFg(nvars,lb,ub,PopInitRange_Data,PopulationSize_Data,Generations_Data,StallGenLimit_Data, TolFun_Data, MaxFunEvals_Data, MaxIter_Data,TolX_Data,TolCon_Data, CrossoverFraction_Data,PFraction)
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
options = gaoptimset;
%% Modify options setting
options = gaoptimset(options,'PopInitRange', PopInitRange_Data);
options = gaoptimset(options,'PopulationSize', PopulationSize_Data);


options = gaoptimset(options,'Generations', Generations_Data);
options = gaoptimset(options,'StallGenLimit', StallGenLimit_Data);
options = gaoptimset(options,'TolFun', TolFun_Data);
options = gaoptimset(options,'CreationFcn', @gacreationlinearfeasible);
options = gaoptimset(options,'SelectionFcn', {  @selectiontournament [] });

options = gaoptimset(options,'CrossoverFraction', CrossoverFraction_Data);
options = gaoptimset(options,'CrossoverFcn', @crossoverarithmetic); % before {  @crossoverintermediate 1  }


options = gaoptimset(options,'MutationFcn', @mutationadaptfeasible); 


options = gaoptimset(options,'DistanceMeasureFcn',{@distancecrowding,'phenotype'});
 options = gaoptimset(options,'ParetoFraction',PFraction);
 options = gaoptimset(options,'Display', 'iter');

 options = gaoptimset(options,'PlotFcns', {@gaplotpareto});

hybridopts = optimset('MaxFunEvals', MaxFunEvals_Data, 'MaxIter', MaxIter_Data, 'TolFun', TolFun_Data, 'TolX', TolX_Data, 'TolCon', TolCon_Data, 'display','iter');
options = gaoptimset(options,'HybridFcn', {@fgoalattain,hybridopts});
options = gaoptimset(options,'Vectorized', 'off');
options = gaoptimset(options,'UseParallel', 'always');
[x,fval,exitflag,output,population,score] = ...
gamultiobj(@ObjValNeuFg2,nvars,[],[],[],[],lb,ub,options);


