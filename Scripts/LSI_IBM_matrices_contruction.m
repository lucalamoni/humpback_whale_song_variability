%% Import sub-phrase sequences
% Import sub-phrase sequences in UnitsALL2F02NEW.txt as a cell array,
% make sure to tick the "Cell array of characters vectors" in the 
% "Text options".

%% Load the general LSI matrix (all sub-phrases together)
load('02_lsi_mat.mat')
%% Find the index of all the instances in which all the 02 individuals produced the 02_a1 sub-phrase type 

k13 = strfind(UnitsALL2F02NEW(:,3),'02A1_13' ); % Invidual ID13
index13= find(~cellfun(@isempty,k13));
index13(:,2) = 13;
k14 = strfind(UnitsALL2F02NEW(:,3),'02A1_14' ); % Invidual ID14
index14= find(~cellfun(@isempty,k14));
index14(:,2) = 14;
k15 = strfind(UnitsALL2F02NEW(:,3),'02A1_15' ); % Invidual ID15
index15= find(~cellfun(@isempty,k15));
index15(:,2) = 15;
k16 = strfind(UnitsALL2F02NEW(:,3),'02A1_16' ); % Invidual ID16
index16= find(~cellfun(@isempty,k16));
index16(:,2) = 16;
k19 = strfind(UnitsALL2F02NEW(:,3),'02A1_19' ); % Invidual ID19
index19= find(~cellfun(@isempty,k19));
index19(:,2) = 19;
k20 = strfind(UnitsALL2F02NEW(:,3),'02A1_20' ); % Invidual ID20
index20= find(~cellfun(@isempty,k20));
index20(:,2) = 20;
k21 = strfind(UnitsALL2F02NEW(:,3),'02A1_21' ); % Invidual ID21
index21= find(~cellfun(@isempty,k21));
index21(:,2) = 21;
k22 = strfind(UnitsALL2F02NEW(:,3),'02A1_22' ); % Invidual ID22
index22= find(~cellfun(@isempty,k22));
index22(:,2) = 22;
k23 = strfind(UnitsALL2F02NEW(:,3),'02A1_23' ); % Invidual ID23
index23= find(~cellfun(@isempty,k23));
index23(:,2) = 23;
k24 = strfind(UnitsALL2F02NEW(:,3),'02A1_24' ); % Invidual ID24
index24= find(~cellfun(@isempty,k24));
index24(:,2) = 24;
k25 = strfind(UnitsALL2F02NEW(:,3),'02A1_25' ); % Invidual ID25
index25= find(~cellfun(@isempty,k25));
index25(:,2) = 25;
k26 = strfind(UnitsALL2F02NEW(:,3),'02A1_26' ); % Invidual ID26
index26= find(~cellfun(@isempty,k26));
index26(:,2) = 26;
k27 = strfind(UnitsALL2F02NEW(:,3),'02A1_27' ); % Invidual ID27
index27= find(~cellfun(@isempty,k27));
index27(:,2) = 27;

%% Concatenate the individual indices into totIndex_02A1

totIndex_02A1 = [index13;index14;index15;index16;index19;index20;index21;index22;index23;index24;index25;index26;index27];

%% Subset the total LSI matrix (x) with the 02a1 index to create the 02a1 LSI matrix

LSI_02_A1 = x(totIndex_02A1(:,1),totIndex_02A1(:,1));

%% Create the IBM matrix

v = ones(1,length(totIndex_02A1));
IBM_02_A1 = diag(v,0);

k13b = find(totIndex_02A1(:,2)==13,length(totIndex_02A1(:,2)));
k14b = find(totIndex_02A1(:,2)==14,length(totIndex_02A1(:,2)));
k15b = find(totIndex_02A1(:,2)==15,length(totIndex_02A1(:,2)));
k16b = find(totIndex_02A1(:,2)==16,length(totIndex_02A1(:,2)));
k19b = find(totIndex_02A1(:,2)==19,length(totIndex_02A1(:,2)));
k20b = find(totIndex_02A1(:,2)==20,length(totIndex_02A1(:,2)));
k21b = find(totIndex_02A1(:,2)==21,length(totIndex_02A1(:,2)));
k22b = find(totIndex_02A1(:,2)==22,length(totIndex_02A1(:,2)));
k23b = find(totIndex_02A1(:,2)==23,length(totIndex_02A1(:,2)));
k24b = find(totIndex_02A1(:,2)==24,length(totIndex_02A1(:,2)));
k25b = find(totIndex_02A1(:,2)==25,length(totIndex_02A1(:,2)));
k26b = find(totIndex_02A1(:,2)==26,length(totIndex_02A1(:,2)));
k27b = find(totIndex_02A1(:,2)==27,length(totIndex_02A1(:,2)));


% Assign 1s to the IBM matrix for each individual index

IBM_02_A1(k13b(:,1),k13b(:,1)) = 1;
IBM_02_A1(k14b(:,1),k14b(:,1)) = 1;
IBM_02_A1(k15b(:,1),k15b(:,1)) = 1;
IBM_02_A1(k16b(:,1),k16b(:,1)) = 1;
IBM_02_A1(k19b(:,1),k19b(:,1)) = 1;
IBM_02_A1(k20b(:,1),k20b(:,1)) = 1;
IBM_02_A1(k21b(:,1),k21b(:,1)) = 1;
IBM_02_A1(k22b(:,1),k22b(:,1)) = 1;
IBM_02_A1(k23b(:,1),k23b(:,1)) = 1;
IBM_02_A1(k24b(:,1),k24b(:,1)) = 1;
IBM_02_A1(k25b(:,1),k25b(:,1)) = 1;
IBM_02_A1(k26b(:,1),k26b(:,1)) = 1;
IBM_02_A1(k27b(:,1),k27b(:,1)) = 1;

%% Plotting the LSI matrix, this is not the final image output found in the paper, but it serves to checks the individuals
imagesc(LSI_02_A1,'CDataMapping','scaled')
colorbar
caxis([0 1])
xticks = 1:2:length(totIndex_02A1);
yticks = 1:2:length(totIndex_02A1);
set(gca, 'XTick', xticks,'XTickLabel', totIndex_02A1(xticks,2), 'YTick', yticks,'YTickLabel', totIndex_02A1(yticks,2),'fontsize',8);

%% Save the LSI and IBM matrices as CSV files to be used later in the partial Mantel test
csvwrite('LSI_02_A1.csv',LSI_02_A1)
csvwrite('IBM_02_A1.csv',IBM_02_A1)
