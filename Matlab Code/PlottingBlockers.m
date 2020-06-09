%% load object
emiliania_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/emiliania 10.stl';
larvezoe_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/larve-zoe.stl';
ornithocercus_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/ornithocercus 10.stl';
alexandrium_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/planktomania-alexandrium-274 (1).stl';
dinophysis_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/planktomania-dinophysis-caudata-273 (1).stl';
gambier_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/planktomania-gambier-272.stl';
pluteuslarvae_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/Pluteus Larvae 5.stl';
sphere_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/Sphere.STL';
ellipsoid_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/Ellipsoid.STL';
texture = imread('/Users/kevinyoussef/Desktop/ECE 191/Textures/94133169_1392494014271409_6462893957536808960_n.jpg');
%% Plot desired objects
figure(); hold on;
sphere = plt(sphere_path);
larvezoe = plt(larvezoe_path);
patchTexture(sphere, texture) 
patchTexture(larvezoe, texture) 
%% Fix View
set(0,'defaultfigurecolor','k')                     % Change Background Color
grid off  
set(gcf, 'Position',  [0, 0, 480, 480])         % Control Window Size
set(gca,'visible','off')  
axis equal 

%% zero positions
zeroPos(sphere);
zeroPos(larvezoe);

%% Get range of object

%% Scale
scale(sphere,5);
%% move to desired position
move(sphere, [0,0,200])
