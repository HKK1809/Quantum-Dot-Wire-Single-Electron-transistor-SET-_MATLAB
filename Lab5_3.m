% Consider the equivalent circuit of a single electron transistor (SET) discussed 
% in slide 8-27.
% (a) Using the geometry and material data for the Ti-TiOx-Ti-TiOx-Ti SET 
% structure given in slide 8-33 and the Single Electron Transistor paper on the 
% website, calculate the capacitances for the equivalent circuit. (Assuming a 
% parallel plate approximation can be used.)
% (b) Use the results from (a) to calculate the applied voltage between the drain
% and source, Va ,or the gate and source, Vg, required for current to flow.
% (c) Comment on how your results in (b) compare to the measured data in slide
% 8-34 and theSingle Electron Transistor paper.

epsilonr = 24;
epsilonfree = 8.8541878*(10^(-12));
epsilon = epsilonfree*epsilonr;
area = (2.5*40)*(10^(-18));
d = 20*(10^(-9));
q = 1.6*(10^(-19));
C = (epsilon*area)/d;
Ctotal = 3*C;
Vg = q/(2*C);
Va =3*Vg;