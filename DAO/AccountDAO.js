var database = require("./database");
var mysql = require("mysql");
const { json } = require("body-parser");
exports.getAllAccount = function(callbackQuery) {
    //database.connect();
    database.connection.query("select * from account", function(err, results, fields) {
        if (!err) {
            callbackQuery(results);
        } else {
            console.log(err);
        }
    })
}
exports.getOneAccount = async function(userName, passWord) {
    return new Promise(resolve => {

        var sql = "select * from account where AC_userName=?";
        database.connection.query(sql, [userName], function(err, results, fields) {
            console.log("jjjjjjjjjjjj" + results);
            if (results == "") {
                resolve("false")
            } else {
                var sql = "select * from account where AC_passWord=?";
                database.connection.query(sql, [passWord], function(err, results, fields) {
                    if (results == "") {
                        resolve("false")
                    } else {
                        resolve(results)
                    }
                })
            }




        })

    });

}