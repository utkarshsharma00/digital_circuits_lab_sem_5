clc;
xdel(winsid());
x = round(rand(1,10));
nx =  length(x);
sign = 1;

i = 1;
while i < nx + 1
    t = i:0.001:i + 1 - 0.001;
    pi = 3.14;

if x(i) == 1 then
    unipolar_nrz = squarewave(t * 2 * pi, 100);
    unipolar_rz = (1 + squarewave(t * 2 * pi, 50))/2;
    ami = sign * squarewave (t * 2 * pi, 100)/2;
    manchester = squarewave(t * 2 * pi, 50);
    polar_rz = (1+squarewave(t * 2 * pi, 50))/2;
    sign = sign *-1;
else
    unipolar_nrz = 0;
    unipolar_rz = 0;
    ami = 0;
    manchester = -(squarewave(t * 2 * pi, 50));
    polar_rz = -(1 + squarewave(t * 2 * pi, 50))/2;
end
subplot(5, 1, 1);
plot(t, unipolar_nrz);
ylabel("Unipolar NRZ")
subplot(5, 1, 2);
plot(t, unipolar_rz);
subplot(5, 1, 3);
plot(t, ami);
subplot(5, 1, 4);
plot(t, polar_rz);
subplot(5, 1, 5);
plot(t, manchester);
i = i + 1;
end

