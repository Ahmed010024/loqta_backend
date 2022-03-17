const getData = require('../../models/product/deleteProduct.js')
const deleteProduct = async (req, res, next) => {
    console.log(req,"body")
    var dataValue = await getData(req.user.ID??"0",req.body.product)
    res.status('200').json({"product":dataValue});
}
module.exports = deleteProduct