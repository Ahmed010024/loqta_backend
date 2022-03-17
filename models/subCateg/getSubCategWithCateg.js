var datacenter = require('../../config/database/datacenter')
const getData = async (categ) => {
    sql = "SELECT * FROM sub_categories WHERE category = ?"
    return datacenter.promise().query(sql,[categ]).then(([rows]) => {
        return rows;
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData