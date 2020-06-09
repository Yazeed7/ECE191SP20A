function scale(object, s)
    zeroPos(object);
    object.Vertices = object.Vertices .* s;
end