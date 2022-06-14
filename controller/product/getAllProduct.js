const getData = require('../../models/product/getAllProduct.js')
const getAllProduct = async (req, res, next) => {
    console.log("0","queryquery")
    var dataValue = await getData(req.user?.ID??"0",req.query.branch??"",req.query.category??"",req.query.city??"",req.query.area??"")
    res.status('200').json({"product":dataValue});
}
module.exports = getAllProduct