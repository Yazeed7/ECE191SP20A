function move(object, pos)
zeroPos(object);
pos = [pos(1)*ones(size(object.Vertices,1),1), pos(2)*ones(size(object.Vertices,1),1),pos(3)*ones(size(object.Vertices,1),1)];
object.Vertices = object.Vertices + pos;
end