function makesinglesilhouette(name,n)
    mkdir SilhouetteSingleView
    disp('Working on: ' + string(name))
    for i = 1:n
        disp('Saving ' + string(i) + ' of ' + string(n))
        cd SingleViewData
        img = imread(string(name) + string(i) + '.jpg');
        cd ..
        cd SilhouetteSingleView
        img = imbinarize(rgb2gray(img));
        img = imresize(img,[480,480]);
        imwrite(img, string(name) + string(i) + '.jpg');
        cd ..
    end
end