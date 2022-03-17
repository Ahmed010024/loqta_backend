var datacenter = require('../../config/database/datacenter')
const getData = async () => {
    sql = "SELECT * FROM area"
    return datacenter.promise().query(sql).then(([rows]) => {
        return rows;
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData