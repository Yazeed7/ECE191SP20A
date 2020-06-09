function make2blurry(name,n)
    mkdir Blurred2View
    disp('Working on: ' + string(name))
    for i = 1:n
        disp('Saving ' + string(i) + ' of ' + string(n))
        cd 2ViewData
        cd(string(name) + string(i)) 
        img1 = imread(string(name) + string(i) + ' Front' + '.jpg');
        img2 = imread(string(name) + string(i) + ' Side' + '.jpg');
        cd ../..
        cd Blurred2View
        mkdir(string(name) + string(i))
        cd(string(name) + string(i))
        img1 = imfilter(img1, ones(100,100)/100^2);
        img2 = imfilter(img2, ones(100,100)/100^2);
        img1 = imresize(img1,[480,480]);
        img2 = imresize(img2,[480,480]);
        imwrite(img1, string(name) + string(i) + ' Front' + '.jpg');
        imwrite(img2, string(name) + string(i) + ' Side' + '.jpg');
        cd ../..
    end
end