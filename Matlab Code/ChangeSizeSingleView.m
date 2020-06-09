function ChangeSizeSingleView(name,n)
    mkdir DifferentSizesSingleView
    disp('Working on: ' + string(name))
    for i = 1:n
        disp('Saving ' + string(i) + ' of ' + string(n))
        cd SingleViewData
        img = imread(string(name) + string(i) + '.jpg');
        cd ..
        cd DifferentSizesSingleView
        pad = randi([0 3000]);
        img = padarray(img, [pad pad]);
        img = imresize(img,[480,480]);
        imwrite(img, string(name) + string(i) + '.jpg');
        cd ..
    end
end