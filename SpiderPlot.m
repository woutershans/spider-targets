close all; clear;
colors = ["black", "#FF5050", "#77C8A6", "#42ACC6", "#588DCA", "#897AFA", "#9A9CA1", "red", "green", "blue", "cyan", "magneta", "yellow"];
colorsPASTEL = ["#3B3B3B", "#FF9C9C", "#BEEBD8", "#9BD9E9", "#88ABCC", "#C7BDF9", "#C6C9CF"];
colorsDARK = ["#000000", "#3D618A", "#000000", "#000000", "#3D618A", "#000000", "#000000"];
colorsR = [[153, 47, 47]./255 [255, 80, 80]./255 [255, 155, 155]./255];
colorsG = [[81, 138, 114]./255 [119, 200, 166]./255 [165, 213, 191]./255];
colorsB = [[61, 97, 138]./255 [88, 141, 202]./255 [124, 159, 200]./255];


%% Spider plot SOA

% Initialize data pointsx   
SOA = [95 3.8 11 0 20];  % SoA
TARGETS = [98 4 11 1 28];  % research
P = [SOA; TARGETS];

plotSpider = true;
if plotSpider == true
    figure('units','centimeters','position',[[7 7] [15 10]]);
    spider_plot_R2019b(P,...
        'AxesLabels', {'Efficiency [%]', 'Power density [kW/l]', 'Power [kW]', 'Bidirectional [0/1]', 'Cost [W/€]'},...
        'AxesInterval', 2, 'AxesLimits', [80, 3, 0, 0, 0; 100, 4.5, 22, 1, 40], ...
        'FillOption', {'on', 'on'}, 'FillTransparency', [0.2, 0.1], 'Color', [colorsB(1:3); colorsB(4:6)]);
    legend('SOA', 'TARGETS', 'Location', 'eastoutside');
end

