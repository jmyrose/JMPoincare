%
%Temporal Poincare section algorithm
%
%Parameters:
%   input   - The dataset (x, y, time) (array)
%   n       - Number of time step iterations (int)
%   T       - Time step (float)

function output = temporalPoincare(input, n, T)

    output(1:2, :) = 0;
    length = size(input);
    curr = 1;
    
    for i = 1:n
        t = i*T;
        
        for j = 1:length(2)
            
            num = input(3,j);
            
            if(num > t)
                  %Linear Interpolation
                  prevNum = input(3,j-1);
                  pt1 = (t-prevNum)/(num-prevNum);
                  pt2 = input(1:2, j)-input(1:2, j-1);
                  final = pt1*pt2 + input(1:2, j-1);
                  output(1:2, curr) = final;
                  curr = curr+1;
                  break;
            end
        
        end
    end
end