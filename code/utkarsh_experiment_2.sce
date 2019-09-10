p = input("Enter the power");
v = input("Enter the no. of bits");
Xmax = input("Enter the Xmax");
SNR = 3*p*(2^(2^v))/(Xmax^2)
Ebno = 10:1:20;
x = 0.5 * sqrt(Ebno);
Pe = 0.5 * erfc(x);
plot(Ebno,Pe);
xlabel("SNR(dB)");
ylabel("Probability of Error");
title("SNR v/s Error");
print("SNR = ")
disp(SNR);
