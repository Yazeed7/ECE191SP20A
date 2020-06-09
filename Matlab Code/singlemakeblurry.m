function singlemakeblurry(name, n)
    mkdir BlurredSingleView
    disp('Working on: ' + string(name))
    for i = 1:n
        disp('Saving ' + string(i) + ' of ' + string(n))
        cd SingleViewData
        img = imread(string(name) + string(i) + '.jpg');
        cd ..
        cd BlurredSingleView
        img = imfilter(img, ones(100,100)/100^2);
        img = imresize(img,[480,480]);
        imwrite(img, string(name) + string(i) + '.jpg');
        cd ..
    end
end