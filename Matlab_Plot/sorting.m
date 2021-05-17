%load the vector file
load Attributes.mat

freq=zeros(120,1);
for j = 1:120
for i=1:length(Attributes)
    if Attributes(i)==j
        freq(j)=freq(j)+1;
    end
end
end

A = [(1:120)',freq]; % A is a matrix with the features and freq

%sorting of the features by frequency
[sorted_freq,id]=sort(freq);
A1= [id,sorted_freq]; % A1 is a matrix with the sorted features in ascending order of frequency
    