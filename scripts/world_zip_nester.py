from os import listdir, path, mkdir
import zipfile
from pathlib import Path

# Some bs automation for CF world files
if input("\n Nest zip files in current directory to output? (y/n) ").strip().lower() == 'n' : exit()
print()

try : mkdir("output")
except : pass

def nest_rezip(src):
    try :
        dst = f"output{path.sep}{src}"
        root = src.replace(".zip","")

        if path.exists(dst) :
            print(f"File exists: {dst}")
            return

        with zipfile.ZipFile(src, "r") as zin, zipfile.ZipFile(dst, "w") as zout:
            for item in zin.infolist():
                data = zin.read(item.filename)

                new_name = f"{root}/{item.filename}"
                item.filename = new_name.replace("\\", "/")

                zout.writestr(item, data)
    except Exception as e :
        print(f"Error: {e}")
    else :
        print(f"Rezipped: {dst}")


for file in listdir(".") :
    if file.endswith(".zip") :
        nest_rezip(file)

input()