%%
clear;
clc;

normalized_filepath = '/Users/tianyuwang/Documents/UCSD/Spring2017/ECE285/MPIIGaze/Data/Normalized/';
path = dir(normalized_filepath);
path = path(4:end);
files = {path.name};

for i = 1:length(files)
    filepath = ([normalized_filepath, files{i},'/']);
    convert_to_h5(filepath);
end

