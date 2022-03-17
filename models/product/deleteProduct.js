var datacenter = require('../../config/database/datacenter')
const getData = async (user,product) => {
    console.log(user,product)
    var sql = `UPDATE product SET status = 0 WHERE ID = ? AND user = ?`
    console.log(sql)

    return datacenter.promise().query(sql,[product,user]).then(([rows]) => {
        return true;
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData