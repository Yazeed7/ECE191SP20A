function zeroPos(object)
% get position of first vetrix in object
xmean = mean(object.Vertices(:,1));
ymean = mean(object.Vertices(:,2));
zmean = mean(object.Vertices(:,3));
pos = [xmean*ones(size(object.Vertices,1),1), ymean*ones(size(object.Vertices,1),1), zmean*ones(size(object.Vertices,1),1)];
object.Vertices = object.Vertices - pos;
end