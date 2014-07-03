#!/usr/bin/env python

import os;
import subprocess;
import Image
import platform


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

os.chdir(script_dir);
print("cwd %s" %(os.getcwd()));

input_pic = 'sf-bridge';

#WINDOWS
if(platform.system() == 'Windows'):
    subprocess.call('sh script_create_checkboard.sh');
    subprocess.call('sh script_border.sh %s 10 20' %input_pic);
    subprocess.call('sh script_frame.sh %s' %input_pic, shell=True);
    subprocess.call('sh script_photobooth_4x4.sh %s 10 10' %input_pic, shell=True);
    subprocess.call('sh script_polaroid_matrix.sh %s' %input_pic, shell=True);
    subprocess.call('sh script_sepia_matrix.sh %s' %input_pic, shell=True);
    subprocess.call('sh script_sepia.sh %s' %input_pic, shell=True);
    subprocess.call('sh script_resize_wistiti.sh', shell=True);
    subprocess.call('sh script_watermark.sh %s' %input_pic, shell=True);
    subprocess.call('sh script_gotham.sh %s' %input_pic, shell=True);
    file = in_pic_dir + 'test.png';
    pic_size = get_image_size(file);
    subprocess.call('sh script_vintage.sh %s %d %d' %(input_pic, pic_size[0],pic_size[1]), shell=True);
    
    subprocess.call('sh script_toaster.sh %s %d %d %d %d' 
                    %(input_pic, pic_size[0],pic_size[1],
                    pic_size[0]*1.5, pic_size[0]*1.5), shell=True);
    

#LINUX
if(platform.system() == 'Linux'):
    subprocess.call('./script_create_checkboard.sh');
    subprocess.call('./script_border.sh %s 10 10' %input_pic, shell=True);
    subprocess.call('./script_frame.sh %s' %input_pic, shell=True);
    subprocess.call('./script_photobooth_4x4.sh %s 10 10' %input_pic, shell=True);
    subprocess.call('./script_polaroid_matrix.sh %s' %input_pic, shell=True);
    subprocess.call('./script_sepia_matrix.sh %s' %input_pic, shell=True);
    subprocess.call('./script_sepia.sh %s' %input_pic, shell=True);
    subprocess.call('./script_resize_wistiti.sh', shell=True);
    subprocess.call('./script_watermark.sh %s' %input_pic, shell=True);
    subprocess.call('./script_gotham.sh %s' %input_pic, shell=True);
    file = in_pic_dir + 'test.png';
    pic_size = get_image_size(file);
    subprocess.call('./script_vintage.sh %s %d %d' %(input_pic, pic_size[0],pic_size[1]), shell=True);


