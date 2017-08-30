function Sim = AdCosin(x,y)

M = (x+y)./2;

Sim = sum((x-M).*(y-M))/(sqrt(sum((x-M).^2))*sqrt(sum((y-M).^2)));


end
