function [pdf2d,meshx,meshy]=pdf2d(x,y)

%%% to speed up the code, put nx and ny at most at 100
nx=100;
ny=100;

n=size(x,1);
m=size(x,2);

if n<=m; x=x';
end

n=size(y,1);
m=size(y,2);

if n<=m; y=y';
end

xmin=min(x);
xmax=max(x);
% % nx=max(size(x));


ymin=min(y);
ymax=max(y);
% % ny=max(size(y));


binx=abs(xmax-xmin)/nx;
biny=abs(ymax-ymin)/ny;


d=[x,y];
N=size(d,1);
A=zeros(ny,nx);
for k=1:nx
    for m=1:ny
        for i=1:N
            if ((d(i,1)<=(xmin+k*binx)) && ...
                    (d(i,1)>(xmin+(k-1)*binx)) &&...
                    (d(i,2)<=(ymin+m*biny)) &&...
                    (d(i,2)>(ymin+(m-1)*biny)))
                A(m,k)=A(m,k)+1;
            end
        end
    end
end

% % cp1=sum(sum(A));%%% Check point cp1 should be N_ctotal number of pairs
pdf2d=A./N;%% Joint density function
% % cp2=sum(sum(pdf2d));%%% Check point cp2 should be 1_cumulative probability
% % smfilt=fspecial('average');
% % pdf2d=filter2(smfilt,pdf2d);

% % % pdf2d=imgaussfilt(pdf2d,'FilterSize',3); 
% % method='movemean';
% % window=9;
% % pdf2d = smoothdata(pdf2d,method,window);

Nr=3;
Nc=3;
pdf2d = smooth2a(pdf2d,Nr,Nc);

% % meshx= meshgrid(linspace(xmin,xmax,nx));
% % meshy = meshgrid(linspace(ymin,ymax,ny));

% % % [meshx,meshy]=meshgrid(x,y);

[meshx,meshy]=meshgrid(linspace(xmin,xmax,nx),linspace(ymin,ymax,ny));

end
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                