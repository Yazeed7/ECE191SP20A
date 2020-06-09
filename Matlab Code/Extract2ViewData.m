function [theta, phi, roll] = Extract2ViewData(filepath, n, name)
%% Load 3D object
    disp('Loading File: ' + string(name))
    object = stlread(filepath);
    
    texture = imread('/Users/kevinyoussef/Desktop/ECE 191/Textures/plankton.jpg');
%% Plot 3D Object
    k = 21;

    set(0,'defaultfigurecolor','k')                     % Change Background Color
    pause(0.5)                                          % Allow Enough Time To Change Default
    p = trimesh(object,'FaceColor','k','EdgeColor','w');     % Plot 3D Object
    grid off                                            % Turn Off Grid
    set(gcf, 'Position',  [0, 0, 1000, 1000])         % Control Window Size
    axis equal                                          % Disable Stretching When Rotating
    set(gca,'visible','off')                            % Disable Plot Box
    set(gca,'CameraViewAngleMode','Manual')             % Disable Zooming When Rotating
    patchTexture(p, texture)                            % Add Texture
%% Create Random Angles
    phi = rad2deg(acos(1-2*rand(n,1))) - 90;                 % Make Distribution Uniform On Sphere Range[-90,90] Integers
    theta = rad2deg(2*pi*rand(n,1));                    % Random Integers Range [0,360]
    roll = 0 + (360-0).*rand(n,1);
    for i = 1:n
        disp('Saving ' + string(i) + ' of ' +string(n))
        view(theta(i),phi(i))
        camroll(roll(i))
        %% Extract Images
        mkdir(name + string(i))
        cd(name+string(i))
        set(gcf,'InvertHardCopy','Off');
        saveas(gcf,name + string(i) + ' Front', 'jpg');
        img = imread(name+string(i)+' Front.jpg');
        img = imadjustn(img);
        img = imfilter(img,ones(k,k)/k^2);
        imwrite(img, name+string(i)+' Front.jpg');
        camorbit(90,0,'camera')
        saveas(gcf,name + string(i) + ' Side', 'jpg');
        img = imread(name+string(i)+' Side.jpg');
        img = imadjustn(img);
        img = imfilter(img,ones(k,k)/k^2);
        imwrite(img, name+string(i)+' Side.jpg');
        cd ..
    end