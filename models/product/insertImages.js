var datacenter = require('../../config/database/datacenter')
const getData = async (ID,arr) => {
    console.log(ID,arr,"test")
    var newArr = [];
    arr.map((item) => {
        var newObj = [];
        newObj.push(item);
        newObj.push(ID);
        newArr.push(newObj)
    })
    console.log(newArr,"newArrnewArrnewArr")
    sql = "INSERT INTO images (title,product) VALUES ?"
    return datacenter.promise().query(sql,[newArr]).then(([rows]) => {
        return ID;
    }).catch((err) => {
        console.error(err);
        return false;
    })

}
module.exports = getData