% separator is ';' and omit the headers
data = dlmread( data_file, ';', 1, 0 );

fixed_acidity = data(:,1);
%volatile_acidity = data(:,2);
%ph = data(:,9);
alcohol = data(:,11);
quality = data(:,12);

bad = quality < 5;
medium = quality == 5;
ok = quality == 6;
good = quality > 6;

clf
hold on

plot( alcohol(medium), fixed_acidity(medium), 'go' )
%plot( alcohol(ok), fixed_acidity(ok), 'yo' )

plot( alcohol(bad), fixed_acidity(bad), 'bo' )
plot( alcohol(good), fixed_acidity(good), 'ro' )

hold off
