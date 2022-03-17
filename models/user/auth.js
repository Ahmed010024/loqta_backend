var datacenter = require('../../config/database/datacenter')
var MD5 = require('md5')
const getData = async (user) => {
    var userName = user.userName;
    var userNameOrEmail = user.userNameOrEmail;
    var password = MD5(user.password);
    console.log(userName,userNameOrEmail,password)
    sql = "SELECT * FROM users WHERE (phone = ? AND password = ?) OR (email = ? AND password = ?)"
    return datacenter.promise().query(sql,[userNameOrEmail,password,userNameOrEmail,password]).then(([rows]) => {
        console.log(rows[0])
        if(rows[0]){
            return rows[0];
        }else{
            return false
        }
        
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData