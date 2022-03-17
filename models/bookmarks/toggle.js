var datacenter = require('../../config/database/datacenter')
const getData = async (user,product) => {
    sql = "SELECT * FROM bookmarks WHERE user = ? AND product = ?"
    return datacenter.promise().query(sql,[user,product]).then(([rows]) => {
        if(rows[0]){
            sql = "DELETE FROM bookmarks WHERE ID = ?"
            return datacenter.promise().query(sql,[rows[0].ID]).then(([rows]) => {
                    return true 
            }).catch((err) => {
                console.error(err);
                return false;
            })
        }else{
            sql = "INSERT INTO bookmarks(user, product) VALUES(?,?)"
            return datacenter.promise().query(sql,[user,product]).then(([rows]) => {
                return true
            }).catch((err) => {
                console.error(err);
                return false;
            })
        }
        
    }).catch((err) => {
        console.error(err);
        return false;
    })
}
module.exports = getData