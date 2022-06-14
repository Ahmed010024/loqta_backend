var datacenter = require('../../config/database/datacenter')
const getData = async (ID) => {
    sql = `SELECT *,CONCAT('https://l8back.storkhost.com/images/products/',title) as img FROM images WHERE product = '${ID}'`
    return datacenter.promise().query(sql).then(([rows]) => {
        return rows;
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData