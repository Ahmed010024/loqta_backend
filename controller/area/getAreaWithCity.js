const getData = require('../../models/area/getAreaWithCity')
const getAllArea = async (req, res, next) => {
    var dataValue = await getData(req.params.city)
    res.status('200').json({"area":dataValue});
}
module.exports = getAllArea