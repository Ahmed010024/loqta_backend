const getData = require('../../models/subCateg/getAllSubCateg')
const getAllSubCateg  = async (req, res, next) => {
    var dataValue = await getData()
    res.status('200').json({"subCateg":dataValue});
}
module.exports = getAllSubCateg 