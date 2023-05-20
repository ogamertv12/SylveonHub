local foldername = {"SylveonHub", "MobileSylveonHub"}

for i = 1, 2 do
    local Folder = isfolder(foldername[i])
    if Folder then
        delfolder(foldername[i])
    end
end
