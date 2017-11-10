%Read in ship speed from an edited csv file and assign it to a DataSet
dataSetSpeed = readtable('C:\Users\hydro\Documents\School\Fall 2017\Software Eng\github 11.3\Predictive-Maintenance-System-master\Data_Converter\Files\Speed CSVs\dataSpeed7.csv','ReadVariableNames',false);

%Function to calculate the pca for the called dataSet, as well as graph the
%pca in a cumulative/indiviudal comparison plot for the # of principal
%components, and the percent of the data explained by that number 
%of principal components.
%
%Working on making this less "hard coded", meaning having it work for any
%csv file of any amount of columns and principal components. Also
%attempting to add csv file assignment(line 2) into the function as well
%(if possible).

    %parse table to array
    dataAsTable = table2array(dataSetSpeed);
    
    %gets the size of the table where m = # of rows and n = # of columns
    %n will be used later for determining the # of individual principal
    %components, **m is not needed**.
    [m,n] = size(dataAsTable);
    
    %normalize columns of matrix
  % norm = sqrt(sum(dataAsTable.^2,1)); % Compute norms of columns
  % dataAsTable = bsxfun(@rdivide,dataAsTable,norm); % Normalize M
  % norm = reshape(norm,[],1); % Store column vector of norms
    mn = mean(dataAsTable);
    sd = std(dataAsTable);
    sd(sd==0) = 1;

    dataNorm = bsxfun(@minus,dataAsTable,mn);
    dataNorm = bsxfun(@rdivide,dataNorm,sd);
    
    dataAsTable = dataNorm;

    %PCA algo based on psuedo code on Github
    coeff = pca(dataAsTable);
    [coeff,score,latent] = pca(dataAsTable);


    %Plot first and last data points
    %idxFirst = dataAsTable(1,:);
    firstPointsTall = score(1,1:2);
    %Last points
    %g = findgroups(dataAsTable.Unit);
    lastPointsTall = score(end,1:2);
    %gether them into memory
    [firstPoints,lastPoints] = gather(firstPointsTall,lastPointsTall);
    
    %plot the first and second PCA components
    figure
    hold on
    plot(score(:,1), score(:,2), '.','MarkerSize',12)
    plot(firstPoints(:,1),firstPoints(:,2),'g.','MarkerSize',16)
    plot(lastPoints(:,1),lastPoints(:,2),'r.','MarkerSize',16)
    
    idxAlarm = score(:,1) > 10 | score(:,1) < -7  | score(:,2) > 5 | score(:,2) < -4;
    idxWarn = score(:,1) > 5 | score(:,1) < -6.5 | score(:,2) > 2 | score(:,2) < -3 & ~idxAlarm;
    
    patch([-10;-10;15;15;10;10;-7;-7;-10],[-5,8,8,-5,-5,5,5,-5,-5], 'r', 'FaceAlpha', 0.3)
    patch([-7,-7,10,10,5,5,-6.5,-6.5,4.99,4.99,-6.5],[-5,5,5,-5,-5,2,2,-3,-3,-5,-5],'y','FaceColor',[1 .8 0], 'FaceAlpha', 0.3)
    patch([-6.5,-6.5,5,5,-6.5],[-3,2,2,-3,-3],'g','FaceAlpha',0.3)
    hold off
    
    axis equal
    xlabel('First Principal Component')
    ylabel('Second Principal Component')
    legend('Data Point','First Data Point','Last Data Point','Location','southwest')

    title('Scatter Plot of 1st & 2nd Principal Components')
    
    classOfData = zeros(length(idxAlarm),1);
  
    for i = 1:length(idxAlarm)
        
        if idxAlarm(i) == 1
            
            classOfData(i,1) = 2;
            
        elseif idxWarn(i) == 1
            
            classOfData(i,1) = 1;
            
        end
        
    end
    
    classificationMatrix = cat(2,score(:,1),score(:,2),classOfData);
