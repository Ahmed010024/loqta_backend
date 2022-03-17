const getData = require('../../models/user/auth.js')
var jwt = require('jsonwebtoken');
const auth  = async (req, res, next) => {

    var dataValue = await getData(req.body)
    console.log(dataValue)
    if(dataValue){
        var token = jwt.sign({ ID: dataValue.ID }, 'l8ta');
        res.status('200').json({"token":token});
    }else{
        res.status('304').json({"access":"access Denid"});
    }

}
module.exports = auth 