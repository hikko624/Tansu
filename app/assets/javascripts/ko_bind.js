$(function(){
    // ビューとビューモデルを紐つける
    if(Object.keys(root_vm).length != 0){
	ko.applyBindings(root_vm);
    }
});

