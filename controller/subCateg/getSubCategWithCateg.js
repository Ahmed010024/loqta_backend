const getData = require('../../models/subCateg/getSubCategWithCateg.js')
const getSubCategWithCateg  = async (req, res, next) => {
    var dataValue = await getData(req.params.categ)
    res.status('200').json({"subCateg":dataValue});
}
module.exports = getSubCategWithCateg 