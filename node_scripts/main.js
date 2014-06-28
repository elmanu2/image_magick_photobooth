var gm = require('gm');

var input_path = "/home/manu/dev/image_magick_photobooth/node_scripts/test.png";
console.log('Input picture : ' + input_path);

gm(input_path)
.size(function(err, size){
        if(!err){
            console.log('width = ' + size.width);
            console.log('height = ' + size.height);
        }
        else{
            console.log('error');
        }
});

var util = require('util'),
    spawn = require('child_process').spawn,
    pwd = spawn('pwd', []);

pwd.stdout.on('data', function(data){
    console.log('stdout:'  + data);
    
});
//
//console.log('Wistiti Image processing');
