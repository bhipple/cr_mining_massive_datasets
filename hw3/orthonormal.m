function res = orthonormal(U, V)
    res = 0;

    % Both vectors must be unit vectors (sum of squares = 1)
    sumU = sum(U .^2)
    sumV = sum(V .^ 2)

    % The two vectors must be orthogonal
    dotproduct = U * V'
    if dotproduct != 0
        return
    end

    res = 1;
end
