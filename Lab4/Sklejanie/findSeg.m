function i = findSeg(xData,x)
iLeft = 1;
iRight = length(xData);
while 1
    if (iRight - iLeft) <= 1
        i = iLeft;
        return
    end
    i = fix((iLeft + iRight)/2);
    if x < xData(i)
        iRight = i;
    else
        iLeft = i;
    end
end
end