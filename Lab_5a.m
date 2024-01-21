% A quantum wire is a system in which the electrons are confined in two 
% dimensions and free in the third forming a 1D conductor. Begin with such 
% a system confined to cross-section of Lx = 2.0nm x Ly = 2.0nm.
% (Assume m* = m0.)
% (a) Calculate and plot the density of states (DOS) versus electron energy 
% of this system for quantum states up to nx2 + ny2 = 16

hbar = 1.05457*(10^(-34));
hbar_sq = hbar*hbar;
pi_sq = pi*pi;
m = 9.1*(10^(-31));
Lx = 2*(10^(-9));
Ly = 2*(10^(-9));

n1 = [1, 2];
n2 = [1, 2, 3];

x = 1;
z = 1;
while (x < 3)
    y = x;
    while (y < 4)
        Emin(z) = ((hbar_sq*pi_sq)/(2*m))*(((n1(x)*n1(x))/(Lx*Lx))+((n2(y)*n2(y))/(Ly*Ly)));
        Emin(z) = Emin(z) + (hbar_sq/(8*m));
        y = y + 1;
        z = z + 1;
    end
    x = x + 1;
end
E1 = linspace(Emin(1), 3*Emin(1), 10000); 
E2 = linspace(Emin(2), 3*Emin(2), 10000); 
E3 = linspace(Emin(3), 3*Emin(3), 10000); 
E4 = linspace(Emin(4), 3*Emin(4), 10000); 
E5 = linspace(Emin(5), 3*Emin(5), 10000); 

 g1 = (1/(hbar*pi)).*sqrt((2*m)./(E1-Emin(1)));
 g2 = (1/(hbar*pi)).*sqrt((2*m)./(E2-Emin(2)));
 g3  = (1/(hbar*pi)).*sqrt((2*m)./(E3-Emin(3)));
 g4  = (1/(hbar*pi)).*sqrt((2*m)./(E4-Emin(4)));
 g5  = (1/(hbar*pi)).*sqrt((2*m)./(E5-Emin(5)));

 plot(E1,g1, 'r')
 hold on
 plot(E2,g2, 'g')
 hold on
 plot(E3,g3, 'b')
 hold on
 plot(E4,g4)
 hold on
 plot(E5,g5,'k')
 hold on
 title('Density of state for variable nx, ny values')
 ylabel('Density of State (per J per m)')
 xlabel('Enegrgy Sweep (J)')
 legend({'nx = 1, ny = 1', 'nx = 1, ny = 2', 'nx = 1, ny = 3', 'nx = 2, ny = 2','nx = 2, ny = 3'})




