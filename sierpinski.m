function sierpinski(rec)
%SIERPINSKI Plot a Sierpinski's triangle
%   SIERPINSKI(REC) plots the Sierpinski triangle at recursion level REC
%   using a simple affine-iteration scheme.
%
%   INPUT
%     REC : positive integer, recursion depth. The number of small
%           triangles grows as 3^REC. Typical values: 1–8.
%
%   EXAMPLE
%     sierpinski(6);    % Plot Sierpinski's triangle with 6 recursion levels
%
%   NOTES
%     This function uses implicit expansion (R2016b or newer).
%
%   ------------------------------------------------------------------
%   Author and citation:
%   ------------------------------------------------------------------
%   Created by:  Giuseppe Cardillo
%   E-mail:      giuseppe.cardillo.75@gmail.com
%
%   To cite this file:
%   Cardillo G. (2017). sierpinski.m – A compact MATLAB implementation
%   for plotting the Sierpinski triangle.
%
%   GitHub repository:
%   https://github.com/dnafinder/sierpinskitri
%
%   ------------------------------------------------------------------

% ------------------------- Input checking ----------------------------
if nargin < 1 || isempty(rec)
    rec = 6;
end

if ~isscalar(rec) || rec < 1 || rec ~= fix(rec)
    error('sierpinski:BadRecursionLevel', ...
        'REC must be a positive integer scalar.');
end

% ------------------------- Base triangle -----------------------------
baseVertices = [  1   -1    0;       % x-coordinates
                  0    0  sqrt(3) ]; % y-coordinates

[x, x0] = deal(reshape(baseVertices, 2, 1, 3));

% ------------------------- Recursion loop ----------------------------
for k = 1:rec
    x = x(:,:) + x0 * 2^k / 2;
end

numTriangles = 3^rec;

% ------------------------- Plot with PATCH ---------------------------
faces    = reshape(1 : 3 * numTriangles, 3, []).';
vertices = x(:,:).';

patch('Faces', faces, 'Vertices', vertices);
axis equal tight off
title(sprintf('Sierpinski''s Triangle (recursion level = %d)', rec));

end
