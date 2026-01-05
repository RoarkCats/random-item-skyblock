# Modpacks
Random Item Skyblock is posted on CurseForge and Modrinth as a vanilla modpack. (actually Fabric to allow easy client-side modding)

The `readme-updating.txt` is added to overrides to warn users about manually updating the data pack or world and how to go about it.

## Modrinth
Modrinth's manifest is somewhat complicated and best generated from the launcher due to the file hashes.

The Random Item Skyblock **world** must also be added to `overrides/saves` before zipping.

The zip file should be a standard `.zip` type renamed to `.mrpack`, or just let the client handle it. 

Files: 
- `overrides/datapacks/readme-updating.txt`
- `overrides/saves/<RIS World>`
- `modrinth.index.json`

## CurseForge
CurseForge's manifest is simpler and should be modified manually to prevent the client from adding the Fabric API as a dependency automatically.

Updating only requires changing the version number, and the file IDs of the world and data pack projects.

The zip file should be a standard `.zip`

Files: 
- `overrides/datapacks/readme-updating.txt`
- `modrinth.json`
- `modlist.json`