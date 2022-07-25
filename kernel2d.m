
function [kernel2d,xxi,yyi]=kernel2d(x,y)

% Estimate a continuous pdf from the discrete data
[pdfx,xi]=ksdensity(x);
[pdfy,yi]=ksdensity(y);
% Create 2-d grid of coordinates and function values, suitable for 3-d plotting
[xxi,yyi]=meshgrid(xi,yi);
[pdfxx,pdfyy]=meshgrid(pdfx,pdfy);
% Calculate combined pdf, under assumption of independence
pdfxy = pdfxx.*pdfyy; 
kernel2d=pdfxy;
% Plot the results
% % mesh(xxi,yyi,pdfxy)
% % set(gca,'XLim',[min(xi) max(xi)])
% % set(gca,'YLim',[min(yi) max(yi)])