const getData = require('../../models/user/sign.js')
var jwt = require('jsonwebtoken');
const auth  = async (req, res, next) => {
    var dataValue = await getData(req.body)
    var token = jwt.sign({ ID: dataValue.insertId }, 'l8ta');

    res.status('200').json({"token":token});
}
module.exports = auth 