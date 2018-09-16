%David Weidman

function Vrms= rmsSimp()
    f= 1/60 %Hz constant
    V=@(t)155.563*sin(2*pi*f*t)
    Vrms= sqrt(quad(V,0,2*pi,.0001)/(2*pi))
    