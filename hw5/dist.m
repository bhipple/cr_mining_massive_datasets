function [farthestPt farthestDist] = dist(M, candidates)
    % Given a matrix of M points and another matrix of candidate points,
    % find the point which has the greatest minimum distance from any point in M
    farthestPt = candidates(1,:);
    farthestDist = 0;
    for j=1:size(candidates,1)
        closest = 10000000000000000000000;
        for i=1:size(M,1)
            closest = min(closest, sqrt((M(i,1) - candidates(j,1))^2 + (M(i,2) - candidates(j,2))^2));
        end
        if closest > farthestDist
            farthestPt = candidates(j,:);
            farthestDist = closest
        end
    end
end
