function wcheck(w, b)
    % Works for w = [1, 10/3], b = -136/9

    fprintf('\nPositive examples (expect >= 1):\n');
    w * [5; 4] + b
    w * [8; 3] + b

    fprintf('\nNegative examples (expect <= -1):\n');
    w * [3; 3] + b
    w * [7; 2] + b
end
