function main

    input = dlmread('1aOutput.txt');
    
    timeInput = dlmread('1aOutputTime.txt');
    
    input(3,:) = timeInput(1,:);
    
    output = temporalPoincare(input, 1000, 0.1)
    
    figure;
    hold on;
    xlabel ('x');
    ylabel ('y');
    title('Poincare');
    plot(mod(output(1,:),2*pi), output(2,:),'.','MarkerSize',1);
    hold off;

end