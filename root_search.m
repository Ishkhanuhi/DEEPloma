function [x1, x2] = root_search(f, a, b, dx)
x1 = a;
f1 = f(a);
x2 = a + dx;
f2 = f(x2);
while f1 * f2 > 0.0
    if x1 >= b
        x1 = nan;
        x2 = nan;
        return;
    end
    x1 = x2;
    f1 = f2;
    x2 = x1 + dx;
    f2 = f(x2);
end
end