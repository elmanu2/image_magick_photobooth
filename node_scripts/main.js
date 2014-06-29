var gm = require('gm');

var util = require('util'),
    spawn = require('child_process').spawn;


var node_dir = process.cwd();
process.chdir('..');
var project_dir = process.cwd();
var input_pic_dir = project_dir + '/input_pictures/';
var script_dir = project_dir + '/im_scripts/bash/';

console.log("Project directory : " + node_dir);
console.log("Nodejs directory : " + project_dir);
console.log("Input pics directory : " + input_pic_dir);
console.log("Scripts directory : " + script_dir);



function pic_size(filepath){
    var width;
    var height;
    
    console.log(process.cwd());
    console.log('filepath : ' + filepath);
    
    
    //This function is threaded/asynchronous
    gm(filepath)
    .size(function(err, size){
            if(!err){
                width = size.width;
                height = size.height;
                console.log('gm width = ' + size.width);
                console.log('gm height = ' + size.height);
            }
            else{
                console.log('error');
            }
        console.log("after gm");
        return width, height;
    });
    
}


//process_filter(ex_nihilo_process, './script_create_checkboard.sh');
//process_filter(simple_process, './script_rgb2gray.sh','test');
//process_filter(simple_process, './script_polaroid_matrix.sh','test');
//process_filter(simple_process, './script_sepia.sh','test');
//process_filter(simple_process, './script_sepia_matrix.sh','test');
//process_filter(border_process, './script_border.sh','test', "20", "10");
process_filter(simple_process_with_sizing, './script_vintage.sh', 'test');

function process_filter(process_type, process_name, file, width, height){
    var node_script_directory = process.cwd();
    process.chdir(script_dir);
    process_type(process_name, file, width, height);
    process.chdir(node_script_directory);
}

function ex_nihilo_process(process_name){
    process_cmd = spawn(process_name, []);
    process_cmd.stdout.on('data', function(data){
        console.log('stdout: ' + data);
    });
}

function simple_process(process_name, file){
    process_cmd = spawn(process_name, [file]);
    process_cmd.stdout.on('data', function(data){
        console.log('stdout: ' + data);
    });
}

function border_process(process_name, file, width, height){
    process_cmd = spawn(process_name, [file, width, height]);
    process_cmd.stdout.on('data', function(data){
        console.log('stdout: ' + data);
    });
}

function simple_process_with_sizing(process_name, file){
    var width, height = pic_size(input_pic_dir + file + '.png'){
    console.log('after size' + width + 'x' + height);
    process_cmd = spawn(process_name, [file, width, height]);
    //process_cmd.stdout.on('data', function(data){
    //    console.log('stdout: ' + data);
    //});
    };
}







//checkboard.stdout.on('data', function(data){
//    console.log('stdout: ' + data);
//});





//
//console.log('Wistiti Image processing');