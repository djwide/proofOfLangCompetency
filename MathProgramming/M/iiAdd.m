%DWeidman

function iTotal=iiAdd(a,b)
    iTotal=0;
    for i=a:1:b
           iTotal=iTotal+i;
    end
    iTotal=iTotal-a-b;

end