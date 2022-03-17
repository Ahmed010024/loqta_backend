const getData = require('../../models/branch/getAllBranch')
const getAllBranch = async (req, res, next) => {
    var dataValue = await getData()
    res.status('200').json({"branch":dataValue});
}
module.exports = getAllBranch