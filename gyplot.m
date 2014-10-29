
for i = 2:8
    string1 = strcat('with/set',num2str(i),'/gyrad.45beads.dat');
    matrix = importdata(string1,'\t');
    vectort = matrix(:,1);
    vectorg = matrix(:,3);
    datawitht{i-1} = vectort;
    datawithg{i-1} = vectorg;
end

datawithout = importdata('gyrad.45beads.without.dat','\t');

maxsize = 0
for i = 1:7
    p = size(datawitht{i});
    if maxsize < p(1,1)
        maxsize = p(1,1);
    end
end

%for i = 1:7
%    sizenow = size(datawitht{i});
%    for j = sizenow(1,1):maxsize
%        datawitht{i}(j) = 0;
%        datawithg{i}(j) = 0;
%    end
%end
    
    
    

xtotal = datawitht{2};
ytotal = datawithg{2};
%for i = [2:7]
%    xtotal = xtotal + datawitht{i};
%    ytotal = ytotal + datawithg{i};
%end


    

x2 = datawithout(:,1);
y2 = datawithout(:,3);



for i=[50:50:size(xtotal)]
    x1cut(i/50) = xtotal(i) * 1000000;
    y1cut(i/50) = ytotal(i);
end
for i=[50:50:size(x2)]
    x2cut(i/50) = x2(i) * 1000000 ;
    y2cut(i/50) = y2(i);
end

figure 
hPlot1 = plot(x1cut,y1cut)
hold on
hPlot2 = plot(x2cut,y2cut)
hold on
hFit1 = plot(fittedmodel2)
hFit2 = plot(fittedmodel3)


set(gca                          , ...
  'Color'           , [1 1 1]    );
set(hFit1                          , ...
  'Color'           , [.3 .3 .5]    ,...
    'LineWidth'       , 2           );


set(hFit2                          , ...
  'Color'           , [.8 .3 .3]    ,...
    'LineWidth'       , 2           );


set(hPlot1                            , ...
    'LineStyle','none',...
  'Marker'          , 'o'         , ...
  'MarkerSize'      , 4           , ...
  'MarkerEdgeColor' , [.75 .75 1]  , ...
  'MarkerFaceColor' , [.3 .3 .5]  );

set(hPlot2                            , ...
    'LineStyle','none',...
  'Marker'          , 'o'         , ...
  'MarkerSize'      , 4           , ...
  'MarkerEdgeColor' , [.75 .75 1]  , ...
  'MarkerFaceColor' , [.8 .3 .3]  );


hTitle  = title ('Radius of Gyration vs Time');
hXLabel = xlabel('Time (µs)'                     );
hYLabel = ylabel('Radius of Gyration (Å)'                      );

hLegend = legend( ...
  [hPlot1, hPlot2], ...
  'With Potential' , ...
  'Without Potential');

set( gca                       , ...
    'FontName'   , 'Verdana' );
set([hTitle, hXLabel, hYLabel], ...
    'FontName'   , 'Verdana');
set([hLegend, gca]             , ...
    'FontSize'   , 10           );
set([hXLabel, hYLabel]  , ...
    'FontSize'   , 12          , ...
    'FontWeight' , 'bold'      );
set( hTitle                    , ...
    'FontSize'   , 16          , ...
    'FontWeight' , 'bold'      );

set(gca, ...
  'Box'         , 'off'     , ...
  'TickDir'     , 'out'     , ...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'YGrid'       , 'on'      , ...
  'XColor'      , [.3 .3 .3], ...
  'YColor'      , [.3 .3 .3], ...
  'YTick'       , 0:10:60, ...
  'LineWidth'   , 1         );