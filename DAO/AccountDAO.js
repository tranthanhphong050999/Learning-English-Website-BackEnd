var database = require("./database");
var mysql = require("mysql");
const { json } = require("body-parser");
const { request } = require("express");
var crypto = require('crypto-js');
// Lấy tất cả account

exports.getAllAccount = function(callbackQuery) {
    //database.connect();
    database.connection.query("select * from account", function(err, results, fields) {
        if (!err) {
            var tmp = {
                status: true,
                data: results
            }
            callbackQuery(tmp);
        } else {
            var tmp = {
                status: false,
            }
            callbackQuery(tmp);
        }
    })
}

// Lấy 1 account theo id

exports.getOneAccountById = async function(AC_Id) {
    return new Promise(resolve => {
        var sql = "select * from account where AC_Id=?";
        database.connection.query(sql, [AC_Id], function(err, results, fields) {
            if (err) {
                var tmp = {
                    status: false,
                }
                resolve(tmp)
            } else {
                var tmp = {
                    status: true,
                    data: results
                }
                resolve(tmp)
            }

        })
    })
}

// Đăng nhập

exports.login = async function(userName, passWord) {
    return new Promise(resolve => {

        var sql = "select * from account where AC_userName=?";
        database.connection.query(sql, [userName], function(err, results, fields) {
            if (results == "") {
                resolve("false")
            } else {
                var bytes = crypto.AES.decrypt(results[0].AC_passWord, 'learningenglish');
                var message_decode = bytes.toString(crypto.enc.Utf8);
                if (message_decode == passWord) {
                    var tmp = {
                        status: true,
                        AC_userName: results[0].AC_userName,
                        AC_fullName: results[0].AC_fullName,
                        AC_Email: results[0].AC_Email,
                        AC_passWord: results[0].AC_passWord
                    }
                    resolve(tmp)
                } else {
                    resolve("false")
                }

            }
        })

    });

}

// Thêm

exports.addAccount = async function(AC_fullName, AC_Email, AC_Streak, AC_Exp, AC_State, AC_Role, AC_idExpOfOneDay, AC_passWord) {
    return new Promise(resolve => {
        var sql = "INSERT INTO account (AC_userName,AC_fullName,AC_Email,AC_Streak,AC_Exp, AC_State,AC_Role,AC_idExpOfOneDay,AC_passWord) VALUES ?";
        var passWordAES = crypto.AES.encrypt(AC_passWord, 'learningenglish').toString();
        var values = [
            [AC_Email, AC_fullName, AC_Email, parseInt(AC_Streak), parseInt(AC_Exp), parseInt(AC_State), parseInt(AC_Role), parseInt(AC_idExpOfOneDay), passWordAES]
        ]
        database.connection.query(sql, [values], function(err, results, fields) {
            if (err) {
                resolve({ status: false })
            } else {
                resolve({ status: true })
            }

        })
    })
}

// Sửa

exports.updateAccount = async function(AC_Id, AC_userName, AC_fullName, AC_Email, AC_Streak, AC_Exp, AC_State, AC_Role, AC_idExpOfOneDay, AC_passWord) {
    return new Promise(resolve => {
        var sql = "UPDATE account SET AC_userName=?,AC_fullName=?,AC_Email=?,AC_Streak=?,AC_State=?,AC_Role=?,AC_idExpOfOneDay=?,AC_idExpOfOneDay=?,AC_passWord=?  Where AC_Id=?"
        var values = [AC_userName, AC_fullName, AC_Email, parseInt(AC_Streak), parseInt(AC_Exp), parseInt(AC_State), parseInt(AC_Role), parseInt(AC_idExpOfOneDay), AC_passWord, AC_Id]

        database.connection.query(sql, values, function(err, results, fields) {
            if (err) {
                resolve({ status: false })
            } else {
                resolve({ status: true })
            }

        })
    })
}

// Xóa

exports.deleteAccountById = async function(AC_Id) {
    return new Promise(resolve => {
        var sql = "delete from account where AC_Id=?";
        database.connection.query(sql, [AC_Id], function(err, results, fields) {
            if (err) {
                resolve({ status: false })
            } else {
                resolve({ status: true })
            }

        })
    })
}

// lưu session

exports.addSession = async function(S_userName, S_passWord, S_Value) {
    return new Promise(resolve => {
        var sql = "INSERT INTO session (S_userName,S_passWord,S_Value) VALUES ?";
        var values = [
            [S_userName, S_passWord, S_Value]
        ]
        database.connection.query(sql, [values], function(err, results, fields) {
            if (err) {
                resolve(err)
            } else {
                var tmp = {
                    S_userName: S_userName,
                    S_passWord: S_passWord,
                    S_Value: S_Value
                }
                resolve(tmp)
            }

        })
    })
}