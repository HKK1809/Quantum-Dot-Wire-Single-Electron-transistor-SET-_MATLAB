% Problem 5.2 Quantum Dots for Optical Tagging
% We want to fabricate some quantum dots that will have their exciton wavelengths
% centered at λ=510nm.
% (a) Using the data from the Nanocrystal Quantum Dot slideset, calculate the 
% appropriate target radius, a, for a spherical nanoparticle made from CdTe.
% (b) If we need to have a spectral width of less than +/-5nm on λ what range of
% radius, a, can be tolerated?
% (c) If the ionization energy to expel electrons into the surrounding matrix is
% 3.0eV are these quantum dots susceptible to biexciton-Auger?

wavelength = 510*(10^(-9));
m = 9.1*(10^(-31));
h = 6.626*(10^(-34));
hbar = 1.05457*(10^(-34));
hbar_sq = hbar*hbar;
c = 3*(10^8);
q = 1.6*(10^(-19));

wavelength_minus = 505*(10^(-9));
wavelength_plus = 515*(10^(-9));

E = (h*c)/wavelength;
Eplus = (h*c)/wavelength_plus;
E_minus = (h*c)/wavelength_minus;

E = E/q
a = sqrt(hbar_sq/(2*m*E))
a_plus = sqrt(hbar_sq/(2*m*Eplus))
a_minus = sqrt(hbar_sq/(2*m*E_minus))




