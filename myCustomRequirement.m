function vals=myCustomRequirement(data)
%MYCUSTOMREQUIREMENT
%
% The myCustomRequirement function defines a custom requirement used in the
% graphical SDOTOOL environment.

% The |vals| return argument is the value returned to the SDOTOOL
% optimization solver.
%
% The |data| input is a structure with fields containing design variable
% values and logged simulation data. For example, if SDOTOOL is configured
% to optimize a design variable set |DesignVars| and the custom requirement
% configured to log a signal |Sig| the |data| structure has fields as
% follows:
%
% data.DesignVars    %Design variable values
% data.Nominal.Sig   %Logged signal when simulating model with |DesignVars|
%
% If SDOTOOL is configured to optimize with an uncertain variables set the
% |data| structure includes fields with logged signals when simulating the
% model with |DesignVars| and uncertain values
%
% data.Uncertain.Sig
%
% See the |sdoHydraulicCylinder_customObjective| function and the
% |sdoHydraulicCylinder_uidemo| for an example of a custom requirement
% function.
%
A = data.DesignVars(1);
objective = A.value ;

Kp = data.DesignVars(1) ;
Ki = data.DesignVars(2) ;
Kd = data.DesignVars(3) ;
objective1 = Kp.value ;
objective2 = Ki.value ;
objective3 = Kd.value ;

end