const getData = require('../../models/city/getAllCities.js')
const getAllCities = async (req, res, next) => {
    var dataValue = await getData()
    res.status('200').json({"city":dataValue});
}
module.exports = getAllCities