function [middle] = bisect(f, x1, x2)
eps = 1.0e-9;
f1 = f(x1);
f2 = f(x2);
if f2 == 0.0
    middle = x2;
    return;
end
if f1 * f2 > 0.0
    disp("Root is not bracketed.")
    return;
end
n = int64(round(logb(2.0, abs(x2 - x1) / eps)));
for i = 1:n
   x3 =  0.5 * (x1 + x2);
   f3 = f(x3);
   if (abs(f3) > abs(f1)) && (abs(f3) > abs(f2))
       return;
   end
   if f3 == 0.0
       middle = x3;
       return;
   end
   if f2 * f3 < 0.0
       x1 = x3;
       f1 = f3;
   else
       x2 = x3;
       f2 = f3;
   end
end
   middle = (x1 + x2) / 2.0;
end

