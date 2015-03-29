function [h, a] = hits(L, iterations)
    % L is the link matrix, such that L(i,j) = 1 iff there is a link from i to j

    h = ones(size(L,1), 1);
    for i = 1:iterations
        a = L' * h;
        a = a ./ max(a)

        h = L * a;
        h = h ./ max(h)
    end
end
