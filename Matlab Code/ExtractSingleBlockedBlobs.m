function ExtractSingleBlockedBlobs(path, n, name)
%% Plot desired objects
disp('Loading File: ' + string(name))
figure(); hold on;
texture = imread('../Textures/plankton.jpg');
sphere_path = '../Modèles 3D/Sphere.STL';
ellipsoid_path = '../Modèles 3D/Ellipsoid.STL';
cuboid_path = '../Modèles 3D/Cuboid.STL';
object = plt(path);
patchTexture(object, texture) 
%% Fix View
k = 21;
set(0,'defaultfigurecolor','k')                     % Change Background Color
grid off
set(gcf, 'Position',  [0, 0, 480, 480])         % Control Window Size
set(gca,'visible','off')  
axis equal 
set(gca,'CameraViewAngleMode','Manual')             % Disable Zooming When Rotating
%% zero positions
zeroPos(object);
%% Get range of object
xmin = min(object.Vertices(:,1));
xmax = max(object.Vertices(:,1));
ymin = min(object.Vertices(:,2));
ymax = max(object.Vertices(:,2));
zmin = min(object.Vertices(:,3));
zmax = max(object.Vertices(:,3));
diff = max([xmax-xmin,ymax-ymin,zmax-zmin]);
phi = rad2deg(acos(1-2*rand(n,1))) - 90;                 % Make Distribution Uniform On Sphere Range[-90,90] Integers
theta = rad2deg(2*pi*rand(n,1));                    % Random Integers Range [0,360]
roll = 0 + (360-0).*rand(n,1);
%%
for i = 1:n
%% Randomize stufz
close all
figure(); hold on;
object = plt(path);
patchTexture(object, texture) 
zeroPos(object);
r = randi([1,5],1,1);
for j = 1:r
    %% Scale
    sphere = plt(sphere_path);
    patchTexture(sphere, texture) 
    s = randi([1,2*round(diff/5)],1,1);
    scale(sphere,s);
    tx = rad2deg(2*pi*rand(1,1));ty = rad2deg(2*pi*rand(1,1));tz = rad2deg(2*pi*rand(1,1));
    rotate(sphere,tx,ty,tz)
    %% move to desired position
    
    randx = 2*diff*rand(1,1)-diff;
    randy = 2*diff*rand(1,1)-diff;
    randz = 2*diff*rand(1,1)-diff;
    while(randx>xmin && randx<xmax)
        randx = 2*diff*rand(1,1)-diff;
    end
    while(randy>ymin && randy<ymax)
        randy = 2*diff*rand(1,1)-diff;
    end
    while(randz>zmin && randz<zmax) 
        randz = 2*diff*rand(1,1)-diff;
    end
    move(sphere, [randx,randy,randz])
end
r = randi([1,5],1,1);
for j = 1:r
    %% Scale
    ellipsoid = plt(ellipsoid_path);
    patchTexture(ellipsoid, texture) 
    s = randi([1,2*round(diff/5)],1,1);
    scale(ellipsoid,s);
    tx = rad2deg(2*pi*rand(1,1));ty = rad2deg(2*pi*rand(1,1));tz = rad2deg(2*pi*rand(1,1));
    rotate(ellipsoid,tx,ty,tz)
    %% move to desired position
    
    randx = 2*diff*rand(1,1)-diff;
    randy = 2*diff*rand(1,1)-diff;
    randz = 2*diff*rand(1,1)-diff;
    while(randx>xmin && randx<xmax)
        randx = 2*diff*rand(1,1)-diff;
    end
    while(randy>ymin && randy<ymax)
        randy = 2*diff*rand(1,1)-diff;
    end
    while(randz>zmin && randz<zmax) 
        randz = 2*diff*rand(1,1)-diff;
    end
    move(ellipsoid, [randx,randy,randz])
end
r = randi([1,5],1,1);
for j = 1:r
    %% Scale
    cuboid = plt(cuboid_path);
    patchTexture(cuboid, texture) 
    s = randi([1,2*round(diff/5)],1,1);
    scale(cuboid,s);
    tx = rad2deg(2*pi*rand(1,1));ty = rad2deg(2*pi*rand(1,1));tz = rad2deg(2*pi*rand(1,1));
    rotate(cuboid,tx,ty,tz)
    %% move to desired position
    
    randx = 2*diff*rand(1,1)-diff;
    randy = 2*diff*rand(1,1)-diff;
    randz = 2*diff*rand(1,1)-diff;
    while(randx>xmin && randx<xmax)
        randx = 2*diff*rand(1,1)-diff;
    end
    while(randy>ymin && randy<ymax)
        randy = 2*diff*rand(1,1)-diff;
    end
    while(randz>zmin && randz<zmax) 
        randz = 2*diff*rand(1,1)-diff;
    end
    move(cuboid, [randx,randy,randz])
end
%% Fix view
    view(theta(i),phi(i))
    camroll(roll(i))

    set(0,'defaultfigurecolor','k')                     % Change Background Color
    grid off  
    set(gcf, 'Position',  [0, 0, 480, 480])         % Control Window Size
    set(gca,'visible','off')  
    axis equal 
    set(gca,'CameraViewAngleMode','Manual')             % Disable Zooming When Rotating


    
        
    %% Extract Images
    set(gcf,'InvertHardCopy','Off');
    saveas(gcf,name + string(i),'jpg');  
    img = imread(name+string(i)+'.jpg');
    img = imadjustn(img);
    img = imfilter(img,ones(k,k)/k^2);
    img = imresize(img,[480,480]);
    imwrite(img, name+string(i)+'.jpg');
    disp('Saving ' + string(i) + ' of ' +string(n))
end
close all
end
    