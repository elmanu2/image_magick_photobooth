#!/usr/bin/env python

import os;
import subprocess;
import Image
import platform
import glob

def get_image_size(filepath):
    print(filepath)
    im=Image.open(filepath)
    return im.size # (width,height) tuple
    

py_dir = os.getcwd();
os.chdir('..');
project_dir = os.getcwd();

in_pic_dir = os.path.join(project_dir,'input_pictures/');
out_pic_dir = os.path.join(project_dir, 'output_pictures/');
script_dir = os.path.join(project_dir, 'im_scripts/bash/');
#in_pic_dir = project_dir + '/input_pictures/';
#out_pic_dir = project_dir + '/output_pictures/';
#script_dir = project_dir + '/im_scripts/bash/';

print(py_dir);
print(project_dir);
print(in_pic_dir);
print(out_pic_dir);
print(script_dir);

os.chdir(out_pic_dir)
print("cwd %s" %(os.getcwd()));

file_list = []
for file in glob.glob("*.png"):
    filename, extension = os.path.splitext(file)
    file_list.append(filename)

os.chdir(script_dir)
for file in file_list :
    print file
    #WINDOWS
    if(platform.system() == 'Windows'):
        subprocess.call('sh script_wisticmp_output.sh %s 90 2 2' %file);
        

#
    
#os.chdir(script_dir);
#print("cwd %s" %(os.getcwd()));
#
#
#
##WINDOWS
#if(platform.system() == 'Windows'):
#    subprocess.call('sh script_create_checkboard.sh');
#
#
#
##LINUX
#if(platform.system() == 'Linux'):
#    subprocess.call('./script_create_checkboard.sh');
# 

