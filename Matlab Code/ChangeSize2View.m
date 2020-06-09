function ChangeSize2View(name, n)
    mkdir DifferentSizes2View
    disp('Working on: ' + string(name))
    for i = 1:n
        disp('Saving ' + string(i) + ' of ' + string(n))
        cd 2ViewData
        cd(string(name) + string(i)) 
        img1 = imread(string(name) + string(i) + ' Front' + '.jpg');
        img2 = imread(string(name) + string(i) + ' Side' + '.jpg');
        cd ../..
        cd DifferentSizes2View
        mkdir(string(name) + string(i))
        cd(string(name) + string(i))
        pad = randi([0 3000]);
        img1 = padarray(img1, [pad pad]);
        img2 = padarray(img2, [pad pad]);
        img1 = imresize(img1,[480,480]);
        img2 = imresize(img2,[480,480]);
        imwrite(img1, string(name) + string(i) + ' Front' + '.jpg');
        imwrite(img2, string(name) + string(i) + ' Side' + '.jpg');
        cd ../..
    end
end
