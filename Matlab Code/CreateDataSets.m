cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
mkdir Blocked2View
cd Blocked2View
emiliania_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/emiliania 10.stl';
larvezoe_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/larve-zoe.stl';
ornithocercus_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/ornithocercus 10.stl';
alexandrium_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/planktomania-alexandrium-274 (1).stl';
dinophysis_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/planktomania-dinophysis-caudata-273 (1).stl';
gambier_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/planktomania-gambier-272.stl';
pluteuslarvae_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/Pluteus Larvae 5.stl';
sphere_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/Sphere.STL';
ellipsoid_path = '/Users/kevinyoussef/Desktop/ECE 191/Modèles 3D/Ellipsoid.STL';
n = 1000;

%% Creating Single View Data
[t_emiliania, p_emiliania, r_emiliania] = ExtractSingleViewData(emiliania_path, n, 'emiliania');
[t_larvezoe, p_larvezoe, r_larvezoe] = ExtractSingleViewData(larvezoe_path, n, 'larvezoe');
[t_ornithocercus, p_ornithocercus, r_ornithocercus] = ExtractSingleViewData(ornithocercus_path, n, 'ornithocercus');
[t_alexandrium, p_alexandrium, r_alexandrium] = ExtractSingleViewData(alexandrium_path, n, 'alexandrium');
[t_dinophysis, p_dinophysis, r_dinophysis] = ExtractSingleViewData(dinophysis_path, n, 'dinophysis');
[t_gambier, p_egambier, r_gambier] = ExtractSingleViewData(gambier_path, n, 'gambier');
[t_pluteuslarvae, p_pluteuslarvae, r_pluteuslarvae] = ExtractSingleViewData(pluteuslarvae_path, n, 'pluteuslarvae');
disp('==============================')
disp('             DONE')
disp('==============================')
%% Creating 2 View Data
cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
mkdir 2ViewData
cd 2ViewData
[t_emiliania, p_emiliania, r_emiliania] = Extract2ViewData(emiliania_path, n, 'emiliania');
[t_larvezoe, p_larvezoe, r_larvezoe] = Extract2ViewData(larvezoe_path, n, 'larvezoe');
[t_ornithocercus, p_ornithocercus, r_ornithocercus] = Extract2ViewData(ornithocercus_path, n, 'ornithocercus');
[t_alexandrium, p_alexandrium, r_alexandrium] = Extract2ViewData(alexandrium_path, n, 'alexandrium');
[t_dinophysis, p_dinophysis, r_dinophysis] = Extract2ViewData(dinophysis_path, n, 'dinophysis');
[t_gambier, p_egambier, r_gambier] = Extract2ViewData(gambier_path, n, 'gambier');
[t_pluteuslarvae, p_pluteuslarvae, r_pluteuslarvae] = Extract2ViewData(pluteuslarvae_path, n, 'pluteuslarvae');
disp('==============================')
disp('             DONE')
disp('==============================')

%% 
[t_emiliania, p_emiliania, r_emiliania] = ExtractSingleViewData(sphere_path, n, 'sphere');
[t_emiliania, p_emiliania, r_emiliania] = ExtractSingleViewData(ellipsoid_path, n, 'ellipsoid');
disp('==============================')
disp('             DONE')
disp('==============================')

%%
cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
mkdir BlockedSingleView
cd BlockedSingleView
ExtractSingleBlocked(emiliania_path, n, 'emiliania');
ExtractSingleBlocked(larvezoe_path, n, 'larvezoe');
ExtractSingleBlocked(ornithocercus_path, n, 'ornithocercus');
%%
cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
mkdir BlockedSingleView
cd BlockedSingleView
ExtractSingleBlocked(ornithocercus_path, n, 'ornithocercus');

%%
ExtractSingleBlocked(alexandrium_path, n, 'alexandrium');
ExtractSingleBlocked(dinophysis_path, n, 'dinophysis');
ExtractSingleBlocked(gambier_path, n, 'gambier');
ExtractSingleBlocked(pluteuslarvae_path, n, 'pluteuslarvae');
disp('==============================')
disp('             DONE')
disp('==============================')

%%
cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
mkdir Blocked2View
cd Blocked2View
Extract2Blocked(pluteuslarvae_path, n, 'pluteuslarvae');
%%
Extract2Blocked(emiliania_path, n, 'emiliania');
Extract2Blocked(larvezoe_path, n, 'larvezoe');
Extract2Blocked(ornithocercus_path, n, 'ornithocercus');
Extract2Blocked(alexandrium_path, n, 'alexandrium');
Extract2Blocked(dinophysis_path, n, 'dinophysis');
Extract2Blocked(gambier_path, n, 'gambier');
Extract2Blocked(pluteuslarvae_path, n, 'pluteuslarvae');
disp('==============================')
disp('             DONE')
disp('==============================')

%%
n = 1000;
cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
singlemakeblurry('emiliania',n)
singlemakeblurry('larvezoe',n)
singlemakeblurry('ornithocercus',n)
singlemakeblurry('alexandrium',n)
singlemakeblurry('dinophysis',n)
singlemakeblurry('gambier',n)
singlemakeblurry('pluteuslarvae',n)

%%
n = 1000;
cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
make2blurry('emiliania',n)
make2blurry('larvezoe',n)
make2blurry('ornithocercus',n)
make2blurry('alexandrium',n)
make2blurry('dinophysis',n)
make2blurry('gambier',n)
make2blurry('pluteuslarvae',n)
%%
n = 1000;
cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
makesinglesilhouette('emiliania',n)
makesinglesilhouette('larvezoe',n)
makesinglesilhouette('ornithocercus',n)
makesinglesilhouette('alexandrium',n)
makesinglesilhouette('dinophysis',n)
makesinglesilhouette('gambier',n)
makesinglesilhouette('pluteuslarvae',n)
%%
n = 1000;
cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
make2silhouette('emiliania',n)
make2silhouette('larvezoe',n)
make2silhouette('ornithocercus',n)
make2silhouette('alexandrium',n)
make2silhouette('dinophysis',n)
make2silhouette('gambier',n)
make2silhouette('pluteuslarvae',n)
%%
n = 1000;
cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
ChangeSizeSingleView('emiliania',n)
ChangeSizeSingleView('larvezoe',n)
ChangeSizeSingleView('ornithocercus',n)
ChangeSizeSingleView('alexandrium',n)
ChangeSizeSingleView('dinophysis',n)
ChangeSizeSingleView('gambier',n)
ChangeSizeSingleView('pluteuslarvae',n)

n = 1000;
cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
ChangeSize2View('emiliania',n)
ChangeSize2View('larvezoe',n)
ChangeSize2View('ornithocercus',n)
ChangeSize2View('alexandrium',n)
ChangeSize2View('dinophysis',n)
ChangeSize2View('gambier',n)
ChangeSize2View('pluteuslarvae',n)

n = 1000;
cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
mkdir BlockedBlobsSingleView
cd BlockedBlobsSingleView
ExtractSingleBlockedBlobs(emiliania_path, n, 'emiliania');
ExtractSingleBlockedBlobs(larvezoe_path, n, 'larvezoe');
ExtractSingleBlockedBlobs(ornithocercus_path, n, 'ornithocercus');

cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
mkdir BlockedBlobs2View
cd BlockedBlobs2View
Extract2BlockedBlobs(pluteuslarvae_path, n, 'pluteuslarvae');

%%
cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
mkdir BlockedBlobs2View
cd BlockedBlobs2View
Extract2BlockedBlobs(gambier_path, n, 'gambier');
%%
cd '/Users/kevinyoussef/Desktop/ECE 191/Underwater-Organism-Identification/Matlab Code'
cd ../..
mkdir test
cd test
Extract2BlockedBlobs(larvezoe_path, n, 'larvezoe');