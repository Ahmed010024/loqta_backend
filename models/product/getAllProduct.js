var datacenter = require('../../config/database/datacenter')
const getData = async (user,branch=false,category=false,city=false,area=false) => {
    var WHERE = "";
    if(branch){
        WHERE += " AND product.branch = " + branch
    }
    if(category){
        WHERE += " AND product.category = " + category
    }
    if(city){
        WHERE += " AND product.city = " + city
    }
    if(area){
        WHERE += " AND product.area = " + area
    }
    console.log(WHERE)
    // if(subCategory){
    //     WHERE += " AND product.city = " + city
    // }
    sql = `SELECT CASE WHEN product.user = ${user} THEN 'mine' ELSE 'false' END as mine,bookmarks.ID as bookmark,product.*,product.ID as product,CONCAT('https://l8back.storkhost.com/images/products/',images.title) as img,cities.title as city,area.title as area,categories.title as category,branches.title as branch FROM product LEFT JOIN cities ON cities.ID = product.city LEFT JOIN area ON area.ID = product.area LEFT JOIN categories ON categories.ID = product.category JOIN branches ON branches.ID = product.branch LEFT JOIN (SELECT images.title,images.product FROM images ORDER BY ID DESC) as images ON images.product = product.ID LEFT JOIN bookmarks ON bookmarks.product = product.ID AND bookmarks.user = ? WHERE product.status = 1 ${WHERE} GROUP BY product.ID ORDER BY product.ID DESC LIMIT 100 `
    return datacenter.promise().query(sql,[user]).then(([rows]) => {
        return rows;
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData