const getData = require('../../models/categ/getCategWithBranch')
const getCategWithBranch = async (req, res, next) => {
    var dataValue = await getData(req.params.branch)
    res.status('200').json({"categ":dataValue});
}
module.exports = getCategWithBranch