var datacenter = require('../../config/database/datacenter')
const getData = async (ID) => {
    sql = `SELECT * FROM users WHERE ID =  ${ID}`
    return datacenter.promise().query(sql).then(([rows]) => {
        return rows[0];
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData