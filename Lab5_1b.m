% A quantum wire is a system in which the electrons are confined in two dimensions and free in the
% third forming a 1D conductor. Begin with such a system confined to cross-section of Lx = 2.0nm x
% Ly = 2.0nm. (Assume m* = m0.)
% (a) Calculate and plot the density of states (DOS) versus electron energy of this system for
% quantum states up to nx2 + ny2 = 16.
% (b) On a single graph plot DOS curves with Ly increasing to 4nm, 8nm, 16nm (holding Lx =
% 2.0nm) and include the bulk (3D) DOS for comparison.

%Assume nx = ny =1;

hbar = 1.05457*(10^(-34));
hbar_sq = hbar*hbar;
pi_sq = pi*pi;
m = 9.1*(10^(-31));
Lx = 2*(10^(-9));
Ly = [2, 4, 8, 16]*(10^(-9));
nx = 1;
ny = 1;

x = 1;
while (x < 5)
    Emin(x) = ((hbar_sq*pi_sq)/(2*m))*(((nx*nx)/(Lx*Lx))+((ny*ny)/(Ly(x)*Ly(x))));
    Emin(x) = Emin(x) + (hbar_sq/(8*m));
    x = x + 1;
end
E1 = linspace(Emin(1), 3*Emin(1), 10000); 
E2 = linspace(Emin(2), 3*Emin(2), 10000); 
E3 = linspace(Emin(3), 3*Emin(3), 10000); 
E4 = linspace(Emin(4), 3*Emin(4), 10000); 

 g1 = (1/(hbar*pi)).*sqrt((2*m)./(E1-Emin(1)));
 g2 = (1/(hbar*pi)).*sqrt((2*m)./(E2-Emin(2)));
 g3  = (1/(hbar*pi)).*sqrt((2*m)./(E3-Emin(3)));
 g4  = (1/(hbar*pi)).*sqrt((2*m)./(E4-Emin(4)));

%BULk
 E =  (hbar_sq)./(8*m);
 Espace = linspace(0, 1.1*E, 10000);
 g_bulk= (1/(hbar*pi)).*sqrt((2*m)./(Espace));

  plot(Espace, g_bulk, 'r')
%   hold on
%  plot(E1,g1,'b')
%  hold on
%  plot(E2,g2, 'g')
%  hold on
%  plot(E3,g3 ,'r')
%  hold on
%  plot(E4,g4,'k')
%  hold on
  title('Density of State for 3D Bulk')
  ylabel('Density of State (per J per m)')
  xlabel('Enegrgy Sweep (J)')
%  legend({'Ly = 2nm', 'Ly = 4nm', 'Ly = 8nm','Ly = 16nm'})




