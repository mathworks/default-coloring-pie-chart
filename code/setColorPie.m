function setColorPie(h_pie)
% Copyright 2021 The MathWorks, Inc.

h_patch = findobj(h_pie, 'Type', 'Patch'); % patch オブジェクト選択
Npatches = length(h_patch); % patch オブジェクトの数

colors = colororder; % デフォルトの色確認
Ncolors = size(colors,1); % 色の数（デフォルトで7種）

% patch オブジェクトの数だけ, 1,2,3,4.. と並ぶ数列作成
idx = repmat(1:Ncolors,1,ceil(Npatches/Ncolors));
idx = idx(1:Npatches);

% 個々の patch に色設定
for ii=1:Npatches
    h_patch(ii).FaceColor = colors(idx(ii),:);
end

end