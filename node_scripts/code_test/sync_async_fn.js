var B = 0;

function sync_fn(){
    return B++;
}

function async_fn(callback){
    callback(B++);
}

console.log('synchrone');
for(var i = 0; i < 5; i++) {
  B = sync_fn();
  console.log(B);
}

B = 0;

console.log('asynchrone');
for(var i = 0; i < 5; i++) {
  async_fn(function(res){
      console.log(res);
  });
}