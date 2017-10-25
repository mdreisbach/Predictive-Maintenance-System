%Read in ship speed from an edited csv file and assign it to a DataSet
dataSetSpeed = readtable('C:\Users\hydro\Downloads\Predictive-Maintenance-System-master\Predictive-Maintenance-System-master\Data_Converter\Files\Speed CSVs\dataCsvSpeed6.csv','ReadVariableNames',true);
%dataSetSpeed = readtable('C:\Users\hydro\Downloads\Predictive-Maintenance-System-master\Predictive-Maintenance-System-master\SpeedCsvs\dataCsvHeaders.csv','ReadVariableNames',true);

%dataSetSpeed = openExample('stats/PrincipalComponentsofaDataSetExample')

graphPca(dataSetSpeed)


%Function to calculate the pca for the called dataSet, as well as graph the
%pca in a cumulative/indiviudal comparison plot for the # of principal
%components, and the percent of the data explained by that number 
%of principal components.
%
%Working on making this less "hard coded", meaning having it work for any
%csv file of any amount of columns and principal components. Also
%attempting to add csv file assignment(line 2) into the function as well
%(if possible).
function z = graphPca(data)

    dataAsTable = table2array(data);
    
    %gets the size of the table where m = # of rows and n = # of columns
    %n will be used later for determining the # of individual principal
    %components, **m is not needed**.
    [m,n] = size(dataAsTable);

    %PCA algo based on psuedo code on Github
    coeff = pca(dataAsTable);
    [coeff,score,latent] = pca(dataAsTable);

    %Plot the cumulative sum of each pca component
    figure
    plot([cumsum(latent(1:n))/sum(latent) latent(1:n)/sum(latent)]*100,'.','MarkerSize',18)
    xlabel('# of principal components');
    ylabel('% of variance of dataset explained');
    legend('Cumulative','Individual')
    title('Title')
    grid on
    
    xAxis = tall(score(:,1));
    yAxis = tall(score(:,2));

    %Create a bin scatter plot of PCA
    figure
    binScatterPlot(xAxis,yAxis,[50,50],'Gamma',0.01)
    axis equal
    xlabel('First Principal Component')
    ylabel('Second Principal Component')
    
    %Plot first and last data points
    %idxFirst = dataAsTable(1,:);
    firstPointsTall = score(1,1:2);
    %Last points
    %g = findgroups(dataAsTable.Unit);
    lastPointsTall = score(end,1:2);
    %gether them into memory
    [firstPoints,lastPoints] = gather(firstPointsTall,lastPointsTall);
    
    %graph
    figure
    hold on
    plot(firstPoints(:,1),firstPoints(:,2),'.','MarkerSize',16)
    plot(lastPoints(:,1),lastPoints(:,2),'r.','MarkerSize',16)
    legend('first points','last points')
    axis equal
    xlabel('1st comp')
    ylabel('2nd comp')
    title('title')
    
end