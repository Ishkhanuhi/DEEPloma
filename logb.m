function y=logb(x,b)
if nargin < 2
    b = exp(1);
end
if ~isscalar(b) && ~ all(size(x)==size(b))
        error('LOGB: Base B must be a scalar, or must be the same size as X.');
end
y = log(x)./log(b);