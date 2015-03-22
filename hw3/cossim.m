function cossim(lambda)
    % Lambda is the scaling factor for non-boolean fields in the vector
    A = [1 0 1 0 1 2*lambda]
    B = [1 1 0 0 1 6*lambda]
    C = [0 1 0 1 0 2*lambda]

    AB = A * B' / (norm(A) * norm(B))
    AC = A * C' / (norm(A) * norm(C))
    BC = C * B' / (norm(C) * norm(B))
end
