%Read in data from CBM Dataset
dataSet = readtable('C:\Users\connorlof\Documents\School\Fall 2017\Software Eng\UCI CBM Dataset\UCI CBM Dataset\data.csv','ReadVariableNames',false);

%Read the dataSet for each ship speed table
dataSetSpeed1 = readtable('C:\Users\connorlof\Documents\School\Fall 2017\Software Eng\SpeedCsvs\dataSpeed1.csv','ReadVariableNames',true);
dataSetSpeed2 = readtable('C:\Users\connorlof\Documents\School\Fall 2017\Software Eng\SpeedCsvs\dataSpeed2.csv','ReadVariableNames',true);
dataSetSpeed3 = readtable('C:\Users\connorlof\Documents\School\Fall 2017\Software Eng\SpeedCsvs\dataSpeed3.csv','ReadVariableNames',true);
dataSetSpeed4 = readtable('C:\Users\connorlof\Documents\School\Fall 2017\Software Eng\SpeedCsvs\dataSpeed4.csv','ReadVariableNames',true);
dataSetSpeed5 = readtable('C:\Users\connorlof\Documents\School\Fall 2017\Software Eng\SpeedCsvs\dataSpeed5.csv','ReadVariableNames',true);
dataSetSpeed6 = readtable('C:\Users\connorlof\Documents\School\Fall 2017\Software Eng\SpeedCsvs\dataSpeed6.csv','ReadVariableNames',true);
dataSetSpeed7 = readtable('C:\Users\connorlof\Documents\School\Fall 2017\Software Eng\SpeedCsvs\dataSpeed7.csv','ReadVariableNames',true);
dataSetSpeed8 = readtable('C:\Users\connorlof\Documents\School\Fall 2017\Software Eng\SpeedCsvs\dataSpeed8.csv','ReadVariableNames',true);
dataSetSpeed9 = readtable('C:\Users\connorlof\Documents\School\Fall 2017\Software Eng\SpeedCsvs\dataSpeed9.csv','ReadVariableNames',true);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(4))
    title(dataSetSpeed1.Properties.VariableNames{4})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(4))
    title(dataSetSpeed2.Properties.VariableNames{4})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(4))
    title(dataSetSpeed3.Properties.VariableNames{4})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(4))
    title(dataSetSpeed4.Properties.VariableNames{4})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(4))
    title(dataSetSpeed5.Properties.VariableNames{4})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(4))
    title(dataSetSpeed6.Properties.VariableNames{4})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(4))
    title(dataSetSpeed7.Properties.VariableNames{4})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(4))
    title(dataSetSpeed8.Properties.VariableNames{4})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(4))
    title(dataSetSpeed9.Properties.VariableNames{4})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(5))
    title(dataSetSpeed1.Properties.VariableNames{5})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(5))
    title(dataSetSpeed2.Properties.VariableNames{5})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(5))
    title(dataSetSpeed3.Properties.VariableNames{5})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(5))
    title(dataSetSpeed4.Properties.VariableNames{5})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(5))
    title(dataSetSpeed5.Properties.VariableNames{5})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(5))
    title(dataSetSpeed6.Properties.VariableNames{5})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(5))
    title(dataSetSpeed7.Properties.VariableNames{5})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(5))
    title(dataSetSpeed8.Properties.VariableNames{5})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(5))
    title(dataSetSpeed9.Properties.VariableNames{5})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(6))
    title(dataSetSpeed1.Properties.VariableNames{6})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(6))
    title(dataSetSpeed2.Properties.VariableNames{6})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(6))
    title(dataSetSpeed3.Properties.VariableNames{6})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(6))
    title(dataSetSpeed4.Properties.VariableNames{6})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(6))
    title(dataSetSpeed5.Properties.VariableNames{6})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(6))
    title(dataSetSpeed6.Properties.VariableNames{6})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(6))
    title(dataSetSpeed7.Properties.VariableNames{6})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(6))
    title(dataSetSpeed8.Properties.VariableNames{6})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(6))
    title(dataSetSpeed9.Properties.VariableNames{6})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(7))
    title(dataSetSpeed1.Properties.VariableNames{7})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(7))
    title(dataSetSpeed2.Properties.VariableNames{7})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(7))
    title(dataSetSpeed3.Properties.VariableNames{7})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(7))
    title(dataSetSpeed4.Properties.VariableNames{7})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(7))
    title(dataSetSpeed5.Properties.VariableNames{7})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(7))
    title(dataSetSpeed6.Properties.VariableNames{7})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(7))
    title(dataSetSpeed7.Properties.VariableNames{7})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(7))
    title(dataSetSpeed8.Properties.VariableNames{7})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(7))
    title(dataSetSpeed9.Properties.VariableNames{7})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(8))
    title(dataSetSpeed1.Properties.VariableNames{8})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(8))
    title(dataSetSpeed2.Properties.VariableNames{8})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(8))
    title(dataSetSpeed3.Properties.VariableNames{8})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(8))
    title(dataSetSpeed4.Properties.VariableNames{8})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(8))
    title(dataSetSpeed5.Properties.VariableNames{8})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(8))
    title(dataSetSpeed6.Properties.VariableNames{8})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(8))
    title(dataSetSpeed7.Properties.VariableNames{8})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(8))
    title(dataSetSpeed8.Properties.VariableNames{8})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(8))
    title(dataSetSpeed9.Properties.VariableNames{8})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(9))
    title(dataSetSpeed1.Properties.VariableNames{9})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(9))
    title(dataSetSpeed2.Properties.VariableNames{9})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(9))
    title(dataSetSpeed3.Properties.VariableNames{9})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(9))
    title(dataSetSpeed4.Properties.VariableNames{9})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(9))
    title(dataSetSpeed5.Properties.VariableNames{9})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(9))
    title(dataSetSpeed6.Properties.VariableNames{9})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(9))
    title(dataSetSpeed7.Properties.VariableNames{9})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(9))
    title(dataSetSpeed8.Properties.VariableNames{9})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(9))
    title(dataSetSpeed9.Properties.VariableNames{9})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(10))
    title(dataSetSpeed1.Properties.VariableNames{10})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(10))
    title(dataSetSpeed2.Properties.VariableNames{10})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(10))
    title(dataSetSpeed3.Properties.VariableNames{10})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(10))
    title(dataSetSpeed4.Properties.VariableNames{10})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(10))
    title(dataSetSpeed5.Properties.VariableNames{10})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(10))
    title(dataSetSpeed6.Properties.VariableNames{10})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(10))
    title(dataSetSpeed7.Properties.VariableNames{10})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(10))
    title(dataSetSpeed8.Properties.VariableNames{10})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(10))
    title(dataSetSpeed9.Properties.VariableNames{10})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(11))
    title(dataSetSpeed1.Properties.VariableNames{11})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(11))
    title(dataSetSpeed2.Properties.VariableNames{11})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(11))
    title(dataSetSpeed3.Properties.VariableNames{11})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(11))
    title(dataSetSpeed4.Properties.VariableNames{11})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(11))
    title(dataSetSpeed5.Properties.VariableNames{11})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(11))
    title(dataSetSpeed6.Properties.VariableNames{11})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(11))
    title(dataSetSpeed7.Properties.VariableNames{11})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(11))
    title(dataSetSpeed8.Properties.VariableNames{11})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(11))
    title(dataSetSpeed9.Properties.VariableNames{11})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(12))
    title(dataSetSpeed1.Properties.VariableNames{12})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(12))
    title(dataSetSpeed2.Properties.VariableNames{12})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(12))
    title(dataSetSpeed3.Properties.VariableNames{12})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(12))
    title(dataSetSpeed4.Properties.VariableNames{12})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(12))
    title(dataSetSpeed5.Properties.VariableNames{12})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(12))
    title(dataSetSpeed6.Properties.VariableNames{12})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(12))
    title(dataSetSpeed7.Properties.VariableNames{12})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(12))
    title(dataSetSpeed8.Properties.VariableNames{12})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(12))
    title(dataSetSpeed9.Properties.VariableNames{12})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(13))
    title(dataSetSpeed1.Properties.VariableNames{13})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(13))
    title(dataSetSpeed2.Properties.VariableNames{13})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(13))
    title(dataSetSpeed3.Properties.VariableNames{13})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(13))
    title(dataSetSpeed4.Properties.VariableNames{13})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(13))
    title(dataSetSpeed5.Properties.VariableNames{13})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(13))
    title(dataSetSpeed6.Properties.VariableNames{13})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(13))
    title(dataSetSpeed7.Properties.VariableNames{13})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(13))
    title(dataSetSpeed8.Properties.VariableNames{13})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(13))
    title(dataSetSpeed9.Properties.VariableNames{13})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(14))
    title(dataSetSpeed1.Properties.VariableNames{14})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(14))
    title(dataSetSpeed2.Properties.VariableNames{14})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(14))
    title(dataSetSpeed3.Properties.VariableNames{14})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(14))
    title(dataSetSpeed4.Properties.VariableNames{14})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(14))
    title(dataSetSpeed5.Properties.VariableNames{14})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(14))
    title(dataSetSpeed6.Properties.VariableNames{14})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(14))
    title(dataSetSpeed7.Properties.VariableNames{14})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(14))
    title(dataSetSpeed8.Properties.VariableNames{14})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(14))
    title(dataSetSpeed9.Properties.VariableNames{14})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(15))
    title(dataSetSpeed1.Properties.VariableNames{15})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(15))
    title(dataSetSpeed2.Properties.VariableNames{15})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(15))
    title(dataSetSpeed3.Properties.VariableNames{15})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(15))
    title(dataSetSpeed4.Properties.VariableNames{15})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(15))
    title(dataSetSpeed5.Properties.VariableNames{15})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(15))
    title(dataSetSpeed6.Properties.VariableNames{15})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(15))
    title(dataSetSpeed7.Properties.VariableNames{15})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(15))
    title(dataSetSpeed8.Properties.VariableNames{15})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(15))
    title(dataSetSpeed9.Properties.VariableNames{15})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(16))
    title(dataSetSpeed1.Properties.VariableNames{16})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(16))
    title(dataSetSpeed2.Properties.VariableNames{16})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(16))
    title(dataSetSpeed3.Properties.VariableNames{16})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(16))
    title(dataSetSpeed4.Properties.VariableNames{16})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(16))
    title(dataSetSpeed5.Properties.VariableNames{16})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(16))
    title(dataSetSpeed6.Properties.VariableNames{16})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(16))
    title(dataSetSpeed7.Properties.VariableNames{16})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(16))
    title(dataSetSpeed8.Properties.VariableNames{16})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(16))
    title(dataSetSpeed9.Properties.VariableNames{16})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(17))
    title(dataSetSpeed1.Properties.VariableNames{17})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(17))
    title(dataSetSpeed2.Properties.VariableNames{17})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(17))
    title(dataSetSpeed3.Properties.VariableNames{17})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(17))
    title(dataSetSpeed4.Properties.VariableNames{17})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(17))
    title(dataSetSpeed5.Properties.VariableNames{17})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(17))
    title(dataSetSpeed6.Properties.VariableNames{17})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(17))
    title(dataSetSpeed7.Properties.VariableNames{17})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(17))
    title(dataSetSpeed8.Properties.VariableNames{17})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(17))
    title(dataSetSpeed9.Properties.VariableNames{17})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(18))
    title(dataSetSpeed1.Properties.VariableNames{18})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(18))
    title(dataSetSpeed2.Properties.VariableNames{18})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(18))
    title(dataSetSpeed3.Properties.VariableNames{18})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(18))
    title(dataSetSpeed4.Properties.VariableNames{18})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(18))
    title(dataSetSpeed5.Properties.VariableNames{18})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(18))
    title(dataSetSpeed6.Properties.VariableNames{18})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(18))
    title(dataSetSpeed7.Properties.VariableNames{18})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(18))
    title(dataSetSpeed8.Properties.VariableNames{18})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(18))
    title(dataSetSpeed9.Properties.VariableNames{18})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot each variable as a scatter or line graph
figure
    %Plot speed 1
    subplot(3,3,1)
    plot(dataSetSpeed1.(1), dataSetSpeed1.(19))
    title(dataSetSpeed1.Properties.VariableNames{19})
    xlabel('Index')
    xlim([0,dataSetSpeed1.(1)(end)])
    %Plot speed 2
    subplot(3,3,2)
    plot(dataSetSpeed2.(1), dataSetSpeed2.(19))
    title(dataSetSpeed2.Properties.VariableNames{19})
    xlabel('Index')
    xlim([0,dataSetSpeed2.(1)(end)])
    %Plot speed 3
    subplot(3,3,3)
    plot(dataSetSpeed3.(1), dataSetSpeed3.(19))
    title(dataSetSpeed3.Properties.VariableNames{19})
    xlabel('Index')
    xlim([0,dataSetSpeed3.(1)(end)])
    %Plot speed 4
    subplot(3,3,4)
    plot(dataSetSpeed4.(1), dataSetSpeed4.(19))
    title(dataSetSpeed4.Properties.VariableNames{19})
    xlabel('Index')
    xlim([0,dataSetSpeed4.(1)(end)])
    %Plot speed 5
    subplot(3,3,5)
    plot(dataSetSpeed5.(1), dataSetSpeed5.(19))
    title(dataSetSpeed5.Properties.VariableNames{19})
    xlabel('Index')
    xlim([0,dataSetSpeed5.(1)(end)])
    %Plot speed 6
    subplot(3,3,6)
    plot(dataSetSpeed6.(1), dataSetSpeed6.(19))
    title(dataSetSpeed6.Properties.VariableNames{19})
    xlabel('Index')
    xlim([0,dataSetSpeed6.(1)(end)])
    %Plot speed 7
    subplot(3,3,7)
    plot(dataSetSpeed7.(1), dataSetSpeed7.(19))
    title(dataSetSpeed7.Properties.VariableNames{19})
    xlabel('Index')
    xlim([0,dataSetSpeed7.(1)(end)])
    %Plot speed 8
    subplot(3,3,8)
    plot(dataSetSpeed8.(1), dataSetSpeed8.(19))
    title(dataSetSpeed8.Properties.VariableNames{19})
    xlabel('Index')
    xlim([0,dataSetSpeed8.(1)(end)])
    %Plot speed 9
    subplot(3,3,9)
    plot(dataSetSpeed9.(1), dataSetSpeed9.(19))
    title(dataSetSpeed9.Properties.VariableNames{19})
    xlabel('Index')
    xlim([0,dataSetSpeed9.(1)(end)])
