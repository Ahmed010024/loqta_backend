var datacenter = require('../../config/database/datacenter')
var fs = require('fs')
const getData = async (files) => {
    var arrName = [];
    Object.keys(files).forEach(key => {
        var oldpath = files[key].path;
        var name = files[key].name.split('.');
        var type = name[name.length - 1];
        var newName = Math.round(Math.random() * 1000000) + "_" + Math.round(Math.random() * 1000000) + "_" + Math.round(Math.random() * 1000000) + "_" + Math.round(Math.random() * 1000000) + "." + type
        console.log(newName,"newNamenewNamenewNamenewNamenewNamenewName")
        var newpath = '../public/images/products/' + newName;
        fs.rename(oldpath, newpath, function (err) {
            if (err) throw err;
        });
        arrName.push(newName)

    })
    

    return arrName
}
module.exports = getData