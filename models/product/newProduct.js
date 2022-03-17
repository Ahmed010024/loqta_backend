var datacenter = require('../../config/database/datacenter')
const getData = async (fildes,user) => {
    console.log(fildes)
    sql = "INSERT INTO product(title,price,des,city,area,category,branch,phone,user) VALUE(?,?,?,?,?,?,?,?,?)"
    return datacenter.promise().query(sql,[fildes.title,fildes.price,fildes.des,fildes.city,fildes.area,fildes.categ,fildes.branch,fildes.phone,user]).then(([rows]) => {
        return rows;
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData