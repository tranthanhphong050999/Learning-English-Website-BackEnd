var mysql = require("mysql");
var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "englishdb"
});
var connect = function() {
    connection.connect(function(err) {
        if (!err) {
            console.log("Database is connected!");
        } else {
            console.log("Database connect err");
        }
    })
}
var closeDB = function() {
    connection.end(function(err) {
        if (!err) {
            console.log("close database");
        }
    })
}
exports.connection = connection;
exports.connect = connect();
exports.getAllWord = function(callbackQuery) {
    connect();
    var sql = "select * from wordbook where WB_Id=?";
    connection.query(sql, [a], function(err, results, fields) {
        if (!err) {
            callbackQuery(results);
        } else {
            console.log(err);
        }
    })
}