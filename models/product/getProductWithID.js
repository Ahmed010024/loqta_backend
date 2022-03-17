var datacenter = require('../../config/database/datacenter')
const getData = async (ID) => {
    sql = `SELECT product.*,users.full_name,CONCAT('http://localhost:3000/images/users/',users.avatar) as avatar,users.created_at as userdate,CONCAT('http://localhost:3000/images/products/',img) as img,cities.title as city,area.title as area,categories.title as category,branches.title as branch FROM product LEFT JOIN cities ON cities.ID = product.city LEFT JOIN area ON area.ID = product.area LEFT JOIN categories ON categories.ID = product.category JOIN branches ON branches.ID = product.branch LEFT JOIN users ON users.ID = product.user WHERE product.ID = ${ID}`
    return datacenter.promise().query(sql).then(([rows]) => {
        return rows[0];
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData