%David Weidman

function Vrms= RMStrap()
    f= 1/60 %Hz constant
    n=150
    t=linspace(0,2*pi,n)
    V=155.563*sin(2*pi*f*t)
    Vrms= sqrt(trapz(t,V)/(2*pi))
    
  