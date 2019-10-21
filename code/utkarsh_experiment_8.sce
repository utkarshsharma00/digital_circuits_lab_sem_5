clc;
fc1 = input("Enter higher frequency:");
fc2 = input("Enter low carrier frequency:");
fp = input("Enter the no of pilses:");
t = 0:0.001:1
c1 = sin(2*3.14*fc1*t)
c2 = sin(2*3.14*fc2*t)
m = (squarewave(2*3.14*fp*t)+1)*0.5
for i=0:1000;
    if m(i+1) == 0
        mm(i+1) = c2(i+1)
      else
          mm(i+1) = c1(i+1);
end
end
subplot(4,1,1)
plot2d(t,m)
subplot(4,1,2)
plot2d(t,c1)
subplot(4,1,3)
plot2d(t,c2)
subplot(4,1,4)
plot2d(t,mm)
