var datacenter = require('../../config/database/datacenter')
var MD5 = require('md5')
const getData = async (user) => {
    var userName = user.userName;
    var userNameOrEmail = user.userNameOrEmail;
    var password = MD5(user.password);
    sql = "INSERT users(full_name,phone,password) VALUES(?,?,?) "
    return datacenter.promise().query(sql,[userName,password,userNameOrEmail,password]).then(([rows]) => {
        return rows;
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData