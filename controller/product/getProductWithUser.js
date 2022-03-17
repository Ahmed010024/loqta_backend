const getData = require('../../models/product/getProductWithUser')
const getProductWithUser = async (req, res, next) => {
    var dataValue = await getData(req.user.ID??"0")
    res.status('200').json({"product":dataValue});
}
module.exports = getProductWithUser