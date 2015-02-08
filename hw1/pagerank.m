function r = pagerank(M, beta, epsilon)
    % M is the stochastic column matrix (every column sums to 1).
    % This forumlation handles spider traps, but not dead ends.
    N = size(M,1);
    A = beta * M + (1-beta) * 1/N * ones(N, N)
    r = 1/N * ones(N,1);

    diff = 1;
    while(diff >= epsilon)
        r2 = A * r
        diff = sum(abs(r2 - r));
        r = r2;
    endwhile
end
