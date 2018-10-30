# python script to generate and hide flag
import os
from random import randint
from tqdm import tqdm

list1 = []
for i in range(0,10):
    list1.append("folder"+str(i).zfill(4))    


for i in tqdm(list1):
    for j in tqdm(list1):
        for k in tqdm(list1):
            path='folder/'+i+'/'+j+'/'+k+'/'
            if not os.path.exists(path):
                os.makedirs(path)
                #print("Made " + path + " .")
                with open(path+'flag.txt',"w") as f:
                    f.write("false alarm!")
print("DONE.")

print("Hiding flag...")

combopath = ""
for i in range(0,3):
    combopath += 'folder' + str(randint(0,9)).zfill(4) + '/'

combopath = 'folder/' + combopath

with open(combopath+"flag.txt",'w') as f:
    f.write("you found me!")

print("DONE. Flag hidden!")
#print("DEBUG: flag is hidden in " + combopath)
# don't cheat! actually look for the flag!