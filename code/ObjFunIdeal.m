function [F,GF] = ObjFunIdeal(in1,wTarget,in3,phiNom,pNom)
%OBJFUNIDEAL
%    [F,GF] = OBJFUNIDEAL(IN1,WTARGET,IN3,PHINOM,PNOM)

%    This function was generated by the Symbolic Math Toolbox version 6.0.
%    13-Feb-2015 08:36:19

alpha1 = in3(:,1);
alpha2 = in3(:,2);
decVar1 = in1(:,1);
decVar2 = in1(:,2);
decVar5 = in1(:,5);
t2 = decVar2-pNom;
t3 = decVar1-phiNom;
t4 = decVar5-wTarget;
t5 = alpha1.^2;
t6 = alpha2.^2;
F = t2.^2.*t6+t3.^2.*t5+t4.^2;
if nargout > 1
    GF = [t5.*(decVar1.*2.0-phiNom.*2.0);t6.*(decVar2.*2.0-pNom.*2.0);0.0;0.0;decVar5.*2.0-wTarget.*2.0];
end