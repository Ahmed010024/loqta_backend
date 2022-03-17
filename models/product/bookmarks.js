var datacenter = require('../../config/database/datacenter')
const getData = async (user) => {
    var sql = `SELECT true as bookmark,product.*,CONCAT('http://localhost:3000/images/products/',images.title) as img,cities.title as city,area.title as area,branches.title as branch,categories.title as category  FROM bookmarks LEFT JOIN product ON product.ID = bookmarks.product LEFT JOIN cities ON cities.ID = product.city LEFT JOIN area ON area.ID = product.area LEFT JOIN categories ON categories.ID = product.category JOIN branches ON branches.ID = product.branch LEFT JOIN (SELECT images.title,images.product FROM images ORDER BY ID DESC) as images ON images.product = product.ID  WHERE bookmarks.user = ?  GROUP BY product.ID`
    return datacenter.promise().query(sql,[user]).then(([rows]) => {
        return rows;
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData