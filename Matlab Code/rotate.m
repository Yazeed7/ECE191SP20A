function c
Rx = [1 0 0;0 cosd(tx) -sind(tx); 0 sind(tx) cosd(tx)];
Ry = [cosd(ty) 0 sind(ty); 0 1 0; -sind(ty) 0 cosd(ty)];
Rz = [cosd(tz) -sind(tz) 0; sind(tz) cosd(tz) 0; 0 0 1];
object.Vertices = (Rx*Ry*Rz*object.Vertices')';
end