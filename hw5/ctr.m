function [A,EV] = ctr()
    A = [.1 .015 .01 .005 1; .09 .016 .012 .006 2; .08 .017 .014 .007 3; .07 .018 .015 .008 4; .06 .019 .016 .01 5];

    EV = [A(:,1).*A(:,2) A(:,1).*A(:,3) A(:,1).*A(:,4)];
end
