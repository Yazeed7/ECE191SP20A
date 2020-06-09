function handle = plt(path)
handle = trimesh(stlread(path),'FaceColor','k','EdgeColor','w', 'LineStyle', '-');
end