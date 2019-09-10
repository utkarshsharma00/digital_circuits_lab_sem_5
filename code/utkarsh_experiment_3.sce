u = input("");
v = input("");
disp("Gaussian Random Variable");
disp("Mean = "+ string(u));
disp("Variance = "+ string(v));
x = -10:0.001:10;
n = 1/sqrt(2*3.14*v) * exp(-(x-u).^2/(2*v));
figure(1);
plot(x,n);
xlabel("x");
ylabel("Probability Density");
title("Gaussian PDF");

a = input("");
b = input("");
disp("Uniform Random Variable");
disp("Minimum Value Of Random Variable=" + string(a));
disp("Minimum Value Of Random Variable=" + string(b));
x = a-5:0.001:b+5;
for i = 1:length(x);
    if x(i) >= a & x(i) <= b;
        u(i) = 1/(b-a);
    else
        u(i) = 0; 
        end   
end
figure(2);
plot(x,u);
xlabel("x");
ylabel("Probability Density");
title("Uniform PDF");

