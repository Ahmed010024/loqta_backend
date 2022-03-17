const getData = require('../../models/categ/getAllCateg')
const getAllCateg = async (req, res, next) => {
    var dataValue = await getData()
    res.status('200').json({"categ":dataValue});
}
module.exports = getAllCateg