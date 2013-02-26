%
%Spatial Poincare section algorithm
%
%Parameters:
%   input   - The dataset (x, y, z) (array)
%   plane   - The plane function y=x (function)

function output = spatialPoincare(input, plane)

    output(1:2:3, :) = 0;
    length = size(input);
    curr = 1;
    flag = 0;
    
    for j = 1:length(2)
        
        if(input(2,j) < plane(input(1,j)))
            flag = 0;
        end
        
        if(input(2,j) > plane(input(1,j)) && flag == 0)
            
              output(1:2:3, curr) = input(1:2:3, j);
              
              curr = curr+1;
              flag = 1;
        end
    end
end