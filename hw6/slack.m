function slack()
    % [x y]
    A = [5 10; 7 10; 1 8; 3 8; 5 8; 7 8; 1 6; 3 6; 5 6; 7 6; 1 4; 3 4; 5 4; 7 4; 1 2; 3 2];

    % Decision boundary
    w = [-1 1];
    b = -2;

    % [x y classification_value]
    C = [A (w * A' .+ b)']
end
