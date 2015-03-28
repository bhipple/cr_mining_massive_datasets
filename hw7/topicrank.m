function v = topicrank(M, beta, epsilon, e)
    % M is the stochastic column transition matrix (every column sums to 1).
    % Beta is the probability of following an outlink
    % Epsilon is the difference error used to determine stop point
    % e is the vector describing which pages are topic pages, to be
    %     teleported to with prob (1-beta)

    % TopicRank formulation is the result of repeated iterations of:
    % v2 = beta*M*v + (1-beta)*e / sum(e)

    % Constants which will not have to be recomputed
    betaM = beta * M;
    teleportTax = (1 - beta) * e / sum(e);

    % Initial value of v sets all nodes equal
    v = 1/size(M,1) * ones(size(M,1), 1);

    % Power Iteration
    diff = Inf;
    while(diff >= epsilon)
        v2 = betaM * v + teleportTax;
        diff = sum(abs(v2 - v));
        v = v2;
    endwhile
end
