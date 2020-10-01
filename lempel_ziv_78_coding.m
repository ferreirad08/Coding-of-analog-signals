% Author: Prof. M.Sc. David Ferreira - Federal University of Amazonas
% Contact: ferreirad08@gmail.com

S = {'s','i','r','_',...
     's','i','d','_',...
     'e','a','s','t','m','a','n','_',...
     'e','a','s','i','l','y','_',...
     't','e','a','s','e','s','_',...
     's','e','a','_',...
     's','i','c','k','_',...
     's','e','a','l','s'};

dict = S(1);
for item = S(2:end)
    if ismember(dict(end),dict(1:end-1))
        dict(end) = strcat(dict(end),item);
    else
        dict(end+1) = item;
    end
end

for i = 1:length(dict)
    item = dict{i};
    idx = find(strcmp({item(1:end-1)},dict),1);
    token(i) = {strcat(num2str(idx),item(end))};
    
    if length(item) < 2
        token(i) = {strcat('0',item)};
    end
end

[dict' token']
