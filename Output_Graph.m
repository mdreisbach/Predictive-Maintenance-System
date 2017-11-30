scatterPlotData = readtable ('C:\Users\hydro\Downloads\dataToGraph.xlsx','ReadVariableNames',false);
 

   xAxis = table2array(scatterPlotData(:,1));
   yAxis = table2array(scatterPlotData(:,2));
   class = table2array(scatterPlotData(:,3));
   mycolor = strings(length(xAxis),1);
   pointsize = 12;

  for i = 1:numel(class)
       if class(i,:)== 0
           mycolor(i,:) = 'g'; %[0 1 0];
           % scatter(xAxis(i,:),yAxis(i,:),pointsize,'g','filled')
       end
       if class(i,:) == 1
           mycolor(i,:)= 'y'; %[1 1 0];
           % scatter(xAxis(i,:),yAxis(i,:),pointsize,'y','filled')
       end%
       if class(i,:) == 2
           mycolor(i,:)= 'r'; %[1 0 0];
           % scatter(xAxis(i,:),yAxis(i,:),pointsize,'r','filled')
       end
   
  end  
 
 fullData = cat(2,xAxis,yAxis,mycolor);
  
 goodCriteria = fullData(:,3) == 'g';
 goodData = fullData(goodCriteria,:);

 warnCriteria = fullData(:,3) == 'y';
 warnData = fullData(warnCriteria,:);
 
 alarmCriteria = fullData(:,3) == 'r';
 alarmData = fullData(alarmCriteria,:);
  
figure1 = figure;

hold on

    scatter(goodData(:,1), goodData(:,2), pointsize, 'g', 'filled')
    scatter(warnData(:,1), warnData(:,2), pointsize, 'y', 'filled')
    scatter(alarmData(:,1), alarmData(:,2), pointsize, 'r', 'filled')

hold off
 
%Convert figure to image
saveas(figure1,'C:\Users\hydro\Downloads\outputGraph.png') 