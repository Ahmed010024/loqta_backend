const getData = require('../../models/area/getAllArea')
const getAllArea = async (req, res, next) => {
    var dataValue = await getData()
    res.status('200').json({"area":dataValue});
}
module.exports = getAllArea