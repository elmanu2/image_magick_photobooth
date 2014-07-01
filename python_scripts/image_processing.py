import os;
import subprocess;
from PIL import Image


def get_image_size(filepath):
    print(filepath)
    im=Image.open(filepath)
    im.size # (width,height) tuple


py_dir = os.getcwd();
os.chdir('..');
project_dir = os.getcwd();
in_pic_dir = project_dir + '\\input_pictures\\';
out_pic_dir = project_dir + '\\output_pictures\\';
script_dir = project_dir + '\\im_scripts\\bash\\';

print(py_dir);
print(project_dir);
print(in_pic_dir);
print(out_pic_dir);
print(script_dir);

os.chdir(script_dir);
subprocess.call('sh script_create_checkboard.sh');

file = in_pic_dir + 'test.pn';

get_image_size(file);

