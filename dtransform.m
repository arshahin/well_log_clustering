function data_ts=dtransform(data,execute_mode)
% %% Transformation including Standardization (1), normalization(2), and both(3)
%%% assume data is a column vercotr of size N*1 or data is a matrix of
%%% size N*M with variables sitting in each column 

%%% Note that if working with time/depth series, you don't want to
%%% transform the first column containing that data

% % [n,m]=size(data);

data_min=min(data);
data_max=max(data);
data_mean=mean(data);
data_std=std(data);

if execute_mode==1
    data_ts=(data-data_min)./(data_max-data_min);
elseif execute_mode==2
    data_ts=(data-data_mean)./data_std;
elseif execute_mode==3
    data_ts1=(data-data_mean)./data_std;
    data_ts1_min=min(data_ts1);
    data_ts1_max=max(data_ts1);
    data_ts=(data_ts1-data_ts1_min)./(data_ts1_max-data_ts1_min);
else
    sprint('execute_mode is not in the library')
    exit
end

end

