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
exports.getOneAccountById = async function(AC_Id) {
    return new Promise(resolve => {
        var sql = "select * from account where AC_Id=?";
        database.connection.query(sql, [AC_Id], function(err, results, fields) {
            resolve(results)
        })
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

exports.addAccount = async function(AC_userName, AC_fullName, AC_Email, AC_Streak, AC_Exp, AC_State, AC_Role, AC_idExpOfOneDay, AC_passWord) {
    return new Promise(resolve => {
        var sql = "INSERT INTO account (AC_userName,AC_fullName,AC_Email,AC_Streak,AC_Exp, AC_State,AC_Role,AC_idExpOfOneDay,AC_passWord) VALUES ?";
        var values = [
            [AC_userName, AC_fullName, AC_Email, parseInt(AC_Streak), parseInt(AC_Exp), parseInt(AC_State), parseInt(AC_Role), parseInt(AC_idExpOfOneDay), AC_passWord]
        ]
        database.connection.query(sql, [values], function(err, results, fields) {
            if (err) {
                resolve(err)
            } else {
                resolve("true")
            }

        })
    })
}
exports.updateAccount = async function(AC_Id, AC_userName, AC_fullName, AC_Email, AC_Streak, AC_Exp, AC_State, AC_Role, AC_idExpOfOneDay, AC_passWord) {
    return new Promise(resolve => {
        var sql = "UPDATE account SET AC_userName=?,AC_fullName=?,AC_Email=?,AC_Streak=?,AC_State=?,AC_Role=?,AC_idExpOfOneDay=?,AC_idExpOfOneDay=?,AC_passWord=?  Where AC_Id=?"
        var values = [AC_userName, AC_fullName, AC_Email, parseInt(AC_Streak), parseInt(AC_Exp), parseInt(AC_State), parseInt(AC_Role), parseInt(AC_idExpOfOneDay), AC_passWord, AC_Id]

        database.connection.query(sql, values, function(err, results, fields) {
            if (err) {
                resolve(err)
            } else {
                resolve("true")
            }

        })
    })
}
exports.deleteAccountById = async function(AC_Id) {
    return new Promise(resolve => {
        var sql = "delete from account where AC_Id=?";
        database.connection.query(sql, [AC_Id], function(err, results, fields) {
            if (err) {
                resolve("false")
            } else {
                resolve("true")
            }

        })
    })
}