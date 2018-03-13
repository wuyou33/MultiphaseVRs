function printResultsPerIteration(FileID,Network,Method)

if ~strcmp(Method,'Default')
fprintf(FileID,'%-20s &%-20s &  %-20.4f  & %-20.4f & %-20.4f & %-20.4f &  %-20.4f & %-20.2f &  %-20.2f  \n',...
    '13-bus',Method,Network.Optimization.OptimalValue,...
    Network.Solution.OptimalValue, ...
   100*(abs(Network.Solution.OptimalValue-Network.Optimization.OptimalValue))./Network.Optimization.OptimalValue,...
   Network.Solution.vMin,...
    Network.Solution.vMax,...
   Network.Optimization.L2L1, Network.Optimization.TimeInfo(1));
 
else
    
fprintf(FileID,'%-20s &%-20s &  %-20s & %-20.4f & %-20.4f & %-20.4f & %-20.4f &  %-20.2f & %-20.2f  \n',...
    '13-bus', 'Default','-----',Network.Solution.OptimalValue,...
  0, ...
  Network.Solution.vMin,...
   Network.Solution.vMax,...
    0,0);


end
 
