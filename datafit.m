data1 = importdata('1.dat','\t');
data2 = importdata('2.dat','\t');
data3 = importdata('3.dat','\t');
data4 = importdata('4.dat','\t');
data5 = importdata('5.dat','\t');
data6 = importdata('6.dat','\t');
data7 = importdata('7.dat','\t');
data8 = importdata('8.dat','\t');
data9 = importdata('7.dat','\t');
data10 = importdata('8.dat','\t');

x1 = data1(:,1);
y1 = data1(:,3);
x2 = data2(:,1);
y2 = data2(:,3);
x3 = data3(:,1);
y3 = data3(:,3);
x4 = data4(:,1);
y4 = data4(:,3);
x5 = data5(:,1);
y5 = data5(:,3);
x6 = data6(:,1);
y6 = data6(:,3);
x7 = data7(:,1);
y7 = data7(:,3);
x8 = data8(:,1);
y8 = data8(:,3);
x9 = data9(:,1);
y9 = data9(:,3);
x10 = data10(:,1);
y10 = data10(:,3);

highest1 = 0;
for i = 1:size(x1)
    if y1(i) > highest1
    highest1 = y1(i)
    end
end

highest2 = 0;
for i = 1:size(x2)
    if y2(i) > highest2
    highest2 = y2(i)
    end
end

highest3 = 0;
for i = 1:size(x3)
    if y3(i) > highest3
    highest3 = y3(i)
    end
end

highest4 = 0;
for i = 1:size(x4)
    if y4(i) > highest4
    highest4 = y4(i)
    end
end

highest5 = 0;
for i = 1:size(x5)
    if y5(i) > highest5
    highest5 = y5(i)
    end
end

highest6 = 0;
for i = 1:size(x6)
    if y6(i) > highest6
    highest6 = y6(i)
    end
end


highest7 = 0;
for i = 1:size(x7)
    if y7(i) > highest7
    highest7 = y7(i)
    end
end

highest8 = 0;
for i = 1:size(x8)
    if y8(i) > highest8
    highest8 = y8(i)
    end
end


highest9 = 0;
for i = 1:size(x9)
    if y9(i) > highest9
    highest9 = y9(i)
    end
end

highest10 = 0;
for i = 1:size(x10)
    if y10(i) > highest10
    highest10 = y10(i)
    end
end

%highest1 = sqrt(highest1)
%highest2 = sqrt(highest2)
%highest3 = sqrt(highest3)
%highest4 = sqrt(highest4)
%highest5 = sqrt(highest5)
%highest1 = sqrt(highest1)


%plot (x1,y1)
%hold on
%hFit = line(xfit,yfit)
