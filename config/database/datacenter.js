const mysql = require('mysql2');

// create the connection to database
const datacenter = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password:'',
  database: 'loqta',
  multipleStatements: true
});

module.exports = datacenter