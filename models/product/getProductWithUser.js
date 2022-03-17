var datacenter = require('../../config/database/datacenter')
const getData = async (user) => {
    sql = `SELECT CASE WHEN product.user = ${user} THEN true ELSE false END as mine,bookmarks.ID as bookmark,product.*,product.ID as product,CONCAT('http://localhost:3000/images/products/',images.title) as img,cities.title as city,area.title as area,categories.title as category,branches.title as branch FROM product LEFT JOIN cities ON cities.ID = product.city LEFT JOIN area ON area.ID = product.area LEFT JOIN categories ON categories.ID = product.category JOIN branches ON branches.ID = product.branch LEFT JOIN (SELECT images.title,images.product FROM images ORDER BY ID DESC) as images ON images.product = product.ID LEFT JOIN bookmarks ON bookmarks.product = product.ID AND bookmarks.user = ? WHERE product.user = ? AND product.status = 1 GROUP BY product.ID`
    return datacenter.promise().query(sql,[user,user]).then(([rows]) => {
        return rows;
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData