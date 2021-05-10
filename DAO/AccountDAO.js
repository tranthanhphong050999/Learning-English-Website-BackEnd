var database = require("./database");
var mysql = require("mysql");
const { json } = require("body-parser");
const { request } = require("express");
var crypto = require('crypto-js');
const md5 = require('md5');
const e = require("express");
const util = require("../DAO/Util")
var wordBookDao = require("../DAO/WordBookDAO")
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

exports.getOneAccountById = async function(AC_Id, S_Value) {
    return new Promise(resolve => {
        var sqlCheckToken = "Select * from session where S_Value=?"
        database.connection.query(sqlCheckToken, [S_Value], function(err, resultsCheckToken, fields) {
            if (resultsCheckToken == "") {
                resolve({
                    status: false,
                    error: "chua dang nhap"
                })
            } else {
                var sql = "select * from account where AC_Id=?";
                database.connection.query(sql, [AC_Id], function(err, results, fields) {
                    if (err) {
                        var tmp = {
                            status: false,
                        }
                        resolve(tmp)
                    } else {
                        if (results == "") { resolve({ status: false }) } else {
                            var tmp = {
                                status: true,
                                data: results
                            }
                            resolve(tmp)
                        }

                    }

                })
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

                if (results[0].AC_passWord == passWord) {
                    var tmp = {
                        status: true,
                        AC_Id: results[0].AC_Id,
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
        var sqlCheckEmail = "Select * from account where AC_Email =?"
        database.connection.query(sqlCheckEmail, [AC_Email], function(err, resultsCheckEmail, fields) {
            if (resultsCheckEmail == "") {
                var sql = "INSERT INTO account (AC_userName,AC_fullName,AC_Email,AC_Streak,AC_Exp, AC_State,AC_Role,AC_idExpOfOneDay,AC_passWord) VALUES ?";
                var passWordMd5 = md5(AC_passWord + "05101999")

                var values = [
                    [AC_Email, AC_fullName, AC_Email, parseInt(AC_Streak), parseInt(AC_Exp), parseInt(AC_State), parseInt(AC_Role), parseInt(AC_idExpOfOneDay), passWordMd5]
                ]
                database.connection.query(sql, [values], function(err, results, fields) {
                    if (err) {
                        resolve({ status: false })
                    } else {
                        var sql1 = "SELECT * FROM account WHERE AC_Email =?"
                        database.connection.query(sql1, [AC_Email], async function(err, results1, fields) {
                            if (results1 == "") {
                                resolve({ status: false })
                            } else {
                                var tmp = await wordBookDao.addWordBook("Hàng ngày", results1[0].AC_Id)

                                resolve({ status: true })


                            }
                        })


                    }

                })
            } else {
                resolve({ status: false })
            }
        })

    })
}

// Sửa

exports.updateAccount = async function(AC_Id, AC_userName, AC_fullName, AC_Email, AC_Streak, AC_Exp, AC_State, AC_Role, AC_idExpOfOneDay, AC_passWord) {
    return new Promise(resolve => {
        var sql = "UPDATE account SET AC_userName=?,AC_fullName=?,AC_Email=?,AC_Streak=?,AC_State=?,AC_Role=?,AC_idExpOfOneDay=?,AC_idExpOfOneDay=?,AC_passWord=?  Where AC_Id=?"
        var passWordMd5 = md5(AC_passWord + "05101999")
        var values = [AC_Email, AC_fullName, AC_Email, parseInt(AC_Streak), parseInt(AC_Exp), parseInt(AC_State), parseInt(AC_Role), parseInt(AC_idExpOfOneDay), passWordMd5, AC_Id]
        if (AC_Id) {
            database.connection.query(sql, values, function(err, results, fields) {
                if (err) {
                    resolve({ status: false })
                } else {
                    resolve({ status: true })
                }

            })
        } else {
            resolve({ status: false })
        }

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

exports.loginByToken = async function(S_Value) {
    return new Promise(resolve => {
        var sql = "SELECT * FROM session WHERE S_Value=? LIMIT 1";
        database.connection.query(sql, [S_Value], function(err, results, fields) {
            if (err) {
                resolve({ status: false })
            } else {
                if (results == "") { resolve({ status: false }) } else {
                    var sql1 = "SELECT * FROM account WHERE AC_userName = ?"

                    database.connection.query(sql1, [results[0].S_userName], function(err, results1, fields) {
                        if (err) {
                            resolve({ status: false })
                        } else {

                            var tmp = {
                                status: true,
                                AC_Id: results1[0].AC_Id,
                                AC_userName: results1[0].AC_userName,
                                AC_fullName: results1[0].AC_fullName,
                                AC_Avatar: results1[0].AC_Avatar
                            }
                            resolve(tmp)
                        }
                    })
                }

            }

        })
    })
}

exports.getStreakByIdAccount = async function(AC_Id) {
    return new Promise(resolve => {
        sql = "select * from expofoneday Where EOOD_idAccount= ?"
        database.connection.query(sql, [AC_Id], function(err, results, fields) {
            if (err) {
                resolve({
                    status: false,
                    data: "Lỗi database"
                })
            } else {
                if (results == "") {
                    resolve({
                        status: false,
                        data: "Không tìm thấy dữ liệu"
                    })
                } else {
                    console.log("resutls :" + results.length)
                    var resultsStreak = new Array()
                    var data = new Array()
                    if (results.length >= 7) {
                        for (var i = results.length - 1; i >= results.length - 7; i--) {
                            resultsStreak[util.getNumDateOffLine(results[i].EOOD_dateCreated)] = results[i];
                        }
                    } else {
                        for (var i = results.length - 1; i >= 0; i--) {
                            resultsStreak[util.getNumDateOffLine(results[i].EOOD_dateCreated)] = results[i];
                        }
                    }

                    for (var index = 0; index < 7; index++) {
                        var tmp = util.getDateNow(index)
                        var dateTmp = new Date(tmp);
                        var day = dateTmp.getDay();
                        if (resultsStreak[index] == null) {
                            data[index] = {
                                day: day,
                                data: 0
                            }
                        } else {
                            data[index] = {
                                day: day,
                                data: resultsStreak[index]
                            }
                        }
                    }
                    resolve({
                        status: true,
                        data: data
                    })
                }
            }
        })
    })
}