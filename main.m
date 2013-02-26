function main

    input = dlmread('3aOutput.txt', ',');
    %input = evalin('base','input');
    
    %timeInput = dlmread('3aOutputTime.txt');
    
    %input(4,:) = timeInput(1,:);
    
    %output = temporalPoincare(input, 10, 6.3462)
    %output = temporalPoincare(input, 1000, 0.1)
    output = spatialPoincare(input, @planeB);
   
    figure;
    hold on;
    xlabel ('x');
    ylabel ('z');
    title('Poincare');
    plot(output(1,:), output(3,:),'.','MarkerSize',5);
    hold off;

end

%Part a
function output = planeA(x)
    output = 20;
end

%Part b
function output = planeB(x)
    output = 2*x;
end