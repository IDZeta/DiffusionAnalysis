function [theColor] = ColorList(number)
%% Description
% This simple function generates a list of colors to use for plotting
% multiple things in one figure. Most (if not all) of these colors are
% native to MATLAB in some way or another.
%% INPUTS
    % number = Row for the color you want to use
%% OUTPUTS
    % theColor = RGB triplet for the color you want to use
%%
colorList = zeros(14, 3);
colorList(1, 1:3) = [0.6350 0.0780 0.1840]; %brick red
colorList(2, 1:3) = [1 0 0]; %bright red
colorList(3, 1:3) = [0.8500 0.3250 0.0980]; %orange
colorList(4, 1:3) = [0.9290 0.6940 0.1250]; %yellow-gold
% colorList(5, 1:3) = [1 1 0]; %bright yellow
colorList(5, 1:3) = [0.9333 0.9333 0]; %slightly-less-bright yellow
colorList(6, 1:3) = [0.4660 0.6740 0.1880]; %grassy green
colorList(7, 1:3) = [0 1 0]; %bright green
colorList(8, 1:3) = [0 1 1]; %cyan
colorList(9, 1:3) = [0.3010 0.7450 0.9330]; %aquamarine
colorList(10, 1:3) = [0 0.4470 0.7410]; %darker blue
colorList(11, 1:3) = [0 0 1]; %navy(ish) blue
colorList(12, 1:3) = [0.4940 0.1840 0.5560]; %lavender
colorList(13, 1:3) = [1 0 1]; %magenta
colorList(14, 1:3) = [0 0 0]; %black
% Graph lines of each color and print out each RGB triplet (scaled up to the
% proper values because MATLAB rescales the max to 1 instead of 255 for 
% some bizarre reason)
% figure;
% hold on
% for i = 1:size(colorList, 1)
%     plot([i i], [0, 1], 'Color', colorList(i, 1:3), 'Linewidth', 5);
%     fprintf('RGB triplet for color %d = [%.3f, %.3f, %.3f]\n', i, colorList(i, 1:3).*255)
% end
% hold off
theColor = colorList(number, 1:3);
end