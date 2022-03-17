var datacenter = require('../../config/database/datacenter')
const getData = async (city) => {
    sql = `SELECT * FROM area WHERE city = ${city}`
    return datacenter.promise().query(sql).then(([rows]) => {
        return rows;
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData