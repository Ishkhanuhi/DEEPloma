function [output] = roots(f, a, b, eps)
if nargin < 4
    eps = 1.0e-6;
end
fprintf('The roots on the interval [%d, %d] are: ', a, b);
while 1
    i = 1;
    [x1, x2] = root_search(f, a, b, eps);
    if ~isnan(x1)
        a = x2;
        root = bisect(f, x1, x2);
        if ~isnan(root)
            output(i) = root;
            ++i;
            output_precision(-int64(logb(eps, 10)));
            continue;
        end
    else
        fprintf("Done", "\n");
        break;
    end
end
end

