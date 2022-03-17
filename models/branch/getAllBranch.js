var datacenter = require('../../config/database/datacenter')
const getData = async () => {
    sql = "SELECT *,CONCAT('http://localhost:3000/images/icon/',icon) as img FROM branches"
    return datacenter.promise().query(sql).then(([rows]) => {
        return rows;
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData