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


%Create Shipspeed and level position array
shipSpeedArray = {'3 knots', '6 knots', '9 knots', '12 knots', '15 knots', '18 knots', '21 knots', '24 knots', '27 knots'};
variableIndex = [4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19];
graphPosIndex = [1,2,3,4,5,6,7,8,9];
%dataSetArray = [dataSetSpeed1,dataSetSpeed2,dataSetSpeed3,dataSetSpeed4,dataSetSpeed5,dataSetSpeed6,dataSetSpeed7,dataSetSpeed8,dataSetSpeed9];


%Loop through variableIndex array and create a figure of 9 graphs for each
for i = 1:length(variableIndex)
 
   %Create new figure to hold 9 graphs
   figure
   
   %Display graph for speed 1 (3 knots)
   displayGraph(dataSetSpeed1, variableIndex(i), 1)
   title(dataSetSpeed1.Properties.VariableNames{variableIndex(i)})
   
   %Display graph for speed 2 (6 knots)
   displayGraph(dataSetSpeed2, variableIndex(i), 2)
   title(dataSetSpeed2.Properties.VariableNames{variableIndex(i)})
   
   %Display graph for speed 3 (9 knots)
   displayGraph(dataSetSpeed3, variableIndex(i), 3)
   title(dataSetSpeed3.Properties.VariableNames{variableIndex(i)})
   
   %Display graph for speed 4 (12 knots)
   displayGraph(dataSetSpeed4, variableIndex(i), 4)
   title(dataSetSpeed4.Properties.VariableNames{variableIndex(i)})
   
   %Display graph for speed 5 (15 knots)
   displayGraph(dataSetSpeed5, variableIndex(i), 5)
   title(dataSetSpeed5.Properties.VariableNames{variableIndex(i)})
   
   %Display graph for speed 6 (18 knots)
   displayGraph(dataSetSpeed6, variableIndex(i), 6)
   title(dataSetSpeed6.Properties.VariableNames{variableIndex(i)})
   
   %Display graph for speed 7 (21 knots)
   displayGraph(dataSetSpeed7, variableIndex(i), 7)
   title(dataSetSpeed7.Properties.VariableNames{variableIndex(i)})
   
   %Display graph for speed 8 (24 knots)
   displayGraph(dataSetSpeed8, variableIndex(i), 8)
   title(dataSetSpeed8.Properties.VariableNames{variableIndex(i)})
   
   %Display graph for speed 9 (27 knots)
   displayGraph(dataSetSpeed9, variableIndex(i), 9)
   title(dataSetSpeed9.Properties.VariableNames{variableIndex(i)})

   
end


function y = displayGraph(data, varIndex, plotIndex)

    subplot(3,3,plotIndex)
    plot(data.(1), data.(varIndex))
    xlabel('Index')
    xlim([0,data.(1)(end)])
end

function variablesRemove = preprocess(variableIndex)
    for i = 1:length(variableIndex)
        if sum(  ) == 0
            variableIndex(:,i) = []
        end
    end
end
