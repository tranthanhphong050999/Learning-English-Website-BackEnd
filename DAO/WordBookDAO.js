var database = require("./database");
var mysql = require("mysql");
const { json } = require("body-parser");
var connection = database.connection;

// Lấy tất cả wordbook

exports.getAllWordBook = async function() {
    return new Promise(resolve => {
        var sql = "select * from wordbook";
        database.connection.query(sql, function(err, results, fields) {
            if (err) {
                resolve("false")
            } else {
                resolve(results)
            }

        })
    })
}

// lấy tất cả wordbook theo idaccount

exports.getAllWordBookByIdAccount = async function(WB_idAccount) {
    return new Promise(resolve => {
        var sql = "select * from wordbook where WB_idAccount=?";
        database.connection.query(sql, [WB_idAccount], function(err, results, fields) {
            if (err) {
                resolve("false")
            } else {
                resolve(results)
            }

        })
    })
}

// Lấy 1 wordbook theo id

exports.getOneWordBookById = async function(WB_Id) {
    return new Promise(resolve => {
        var sql = "select * from wordbook where WB_Id=?";
        database.connection.query(sql, [WB_Id], function(err, results, fields) {
            if (err) {
                resolve("false")
            } else {
                resolve(results)
            }

        })
    })
}

// Thêm

exports.addWordBook = async function(WB_Name, WB_idAccount) {
    return new Promise(resolve => {
        var sql = "INSERT INTO wordbook (WB_Name,WB_idAccount) VALUES ?";
        var values = [
            [WB_Name, WB_idAccount]
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

// Sửa

exports.updateWordBook = async function(WB_Id, WB_Name, WB_idAccount) {
    return new Promise(resolve => {
        var sql = "UPDATE wordbook SET WB_Name=?,WB_idAccount=? WHERE WB_Id=?";
        var values = [WB_Name, WB_idAccount, WB_Id]
        database.connection.query(sql, values, function(err, results, fields) {
            if (err) {
                resolve(err)
            } else {
                resolve("true")
            }

        })
    })
}

// Xóa wordbook theo id

exports.deleteWordBookById = async function(WB_Id) {
    return new Promise(resolve => {
        var sql = "delete from wordbook where WB_Id=?";
        database.connection.query(sql, [WB_Id], function(err, results, fields) {
            if (err) {
                resolve("false")
            } else {
                resolve("true")
            }

        })
    })
}

// Xóa wordbook theo idaccount

exports.deleteWordBookByIdAccount = async function(WB_idAccount) {
    return new Promise(resolve => {
        var sql = "delete from wordbook where WB_idAccount=?";
        database.connection.query(sql, [WB_idAccount], function(err, results, fields) {
            if (err) {
                resolve("false")
            } else {
                resolve("true")
            }

        })
    })
}