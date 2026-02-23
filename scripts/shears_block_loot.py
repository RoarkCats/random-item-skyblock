from os import listdir, mkdir
# from shutil import copyfile
from re import sub,search

dir = "block_loot/"
outdir = "out/"

try : mkdir(dir)
except : pass
try : mkdir(outdir)
except : pass

oldtext = r'''"minecraft:match_tool",
(\s+)"predicate": \{
\s+"items": "minecraft:shears"
\s+\}'''
newtext = r'"minecraft:reference",\n\1"name": "ris:tool_shears"'

def shearsfile(file, text):
    try :
        with open(outdir+file, "w") as newfile :
            # get new text replacing old text maintaining spacing
            newfile.write(sub(oldtext,newtext,text)) # save as new file
        print("copied: "+f)
    except BaseException as e :
        input("err: "+e)

for f in listdir(dir):
    with open(dir+f,"r") as file:
        text = file.read()
        if "shears" in text:
            # copyfile(dir+f,outdir+f)
            shearsfile(f, text)

print("end of 'block_loot' files")
input()