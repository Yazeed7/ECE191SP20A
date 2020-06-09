function Extract2Blocked(path,n,name)
%% Plot desired objects
disp('Loading File: ' + string(name))
figure(); hold on;
texture = imread('../Textures/plankton.jpg');
sphere_path = '../Modèles 3D/Sphere.STL';
sphere = plt(sphere_path);
object = plt(path);
patchTexture(sphere, texture) 
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
zeroPos(sphere);
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
for i = 1:n
%% Randomize stufz
if i~=1
    close all
    figure(); hold on;
    sphere = plt(sphere_path);
    object = plt(path);
    patchTexture(sphere, texture) 
    patchTexture(object, texture) 
    zeroPos(sphere);
    zeroPos(object);
end
r = randi([1,5],1,1);
for j = 1:r
    %% Scale
    if r ~= 1
        temp = plt(sphere_path);
        sphere = temp;
        patchTexture(sphere, texture) 
    end
    s = randi([1,round(diff/5)],1,1);
    scale(sphere,s);
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
%% Fix view
    disp('Saving ' + string(i) + ' of ' +string(n))

    view(theta(i),phi(i))
    camroll(roll(i))

    set(0,'defaultfigurecolor','k')                     % Change Background Color
    grid off  
    set(gcf, 'Position',  [0, 0, 480, 480])         % Control Window Size
    set(gca,'visible','off')  
    axis equal 
    set(gca,'CameraViewAngleMode','Manual')             % Disable Zooming When Rotating

    mkdir(name + string(i))
    cd(name+string(i))
    set(gcf,'InvertHardCopy','Off');
    saveas(gcf,name + string(i) + ' Front', 'jpg');
    img = imread(name+string(i)+' Front.jpg');
    img = imadjustn(img);
    img = imfilter(img,ones(k,k)/k^2);
    img = imresize(img,[480,480]);
    imwrite(img, name+string(i)+' Front.jpg');
    camorbit(90,0,'camera')
    saveas(gcf,name + string(i) + ' Side', 'jpg');
    img = imread(name+string(i)+' Side.jpg');
    img = imadjustn(img);
    img = imfilter(img,ones(k,k)/k^2);
    img = imresize(img,[480,480]);
    imwrite(img, name+string(i)+' Side.jpg');
    cd ..
    end