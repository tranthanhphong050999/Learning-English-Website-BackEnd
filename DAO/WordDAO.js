var database = require("./database");
var mysql = require("mysql");
const { json } = require("body-parser");
var connection = database.connection;

// Lấy tất cả word

exports.getAllWord = async function() {
    return new Promise(resolve => {
        var sql = "select * from word";
        database.connection.query(sql, function(err, results, fields) {
            if (err) {
                resolve({ status: false })
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
    })
}

// Lấy word theo id

exports.getOneWordById = async function(W_Id) {
    return new Promise(resolve => {
        var sql = "select * from word where W_Id=?";
        database.connection.query(sql, [W_Id], function(err, results, fields) {
            if (err) {
                resolve({ status: false })
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
    })
}

// lấy tất cả word theo idWordBook

exports.getAllWordByIdWordBook = async function(W_idWordBook) {
    return new Promise(resolve => {
        var sql = "select * from word where W_idWordBook=?";
        database.connection.query(sql, [W_idWordBook], function(err, results, fields) {
            if (err) {
                resolve({ status: false })
            } else {
                if (results == "") {
                    resolve({ status: false })
                } else {
                    var tmp = {
                        status: true,
                        data: results
                    }
                    resolve(tmp)
                }

            }

        })
    })
}

// lấy 4 word theo idwordbook

exports.getFourWordByIdWordBook = async function(W_idWordBook) {
        return new Promise(resolve => {
            var sql = "select * from word where W_idWordBook=? LIMIT 0,4";
            database.connection.query(sql, [W_idWordBook], function(err, results, fields) {
                if (err) {
                    resolve("false")
                } else {
                    if (results == "") {
                        resolve({ status: false })
                    } else {
                        var tmp = {
                            status: true,
                            data: results
                        }
                        resolve(tmp)
                    }
                }

            })
        })
    }
    // Thêm 

exports.addWord = async function(W_originalWord, W_translatedWord, W_Phrase, W_phraseMean, W_Avatar, W_learnTimes, W_dateCreated, W_Degree, W_linkPost, W_idVocabularyState, W_idWordBook, W_idLearningNumberDay, W_idCustomDegree, W_idState, W_wrongTimes) {
    return new Promise(resolve => {
        var sql = "INSERT INTO word (W_originalWord,W_translatedWord,W_Phrase,W_phraseMean,W_Avatar,W_learnTimes,W_dateCreated,W_Degree,W_linkPost,W_idVocabularyState,W_idWordBook,W_idLearningNumberDay,W_idCustomDegree,W_idState,W_wrongTimes) VALUES ?";
        var values = [
            [W_originalWord, W_translatedWord, W_Phrase, W_phraseMean, W_Avatar, W_learnTimes, W_dateCreated, W_Degree, W_linkPost, W_idVocabularyState, W_idWordBook, W_idLearningNumberDay, W_idCustomDegree, W_idState, W_wrongTimes]
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

exports.updateWord = async function(W_Id, W_originalWord, W_translatedWord, W_Phrase, W_phraseMean, W_Avatar, W_learnTimes, W_dateCreated, W_Degree, W_linkPost, W_idVocabularyState, W_idWordBook, W_idLearningNumberDay, W_idCustomDegree, W_idState, W_wrongTimes) {
    return new Promise(resolve => {
        var sql = "UPDATE word SET W_originalWord=?,W_translatedWord=?,W_Phrase=?,W_phraseMean=?,W_Avatar=?,W_learnTimes=?,W_dateCreated=?,W_Degree=?,W_linkPost=?,W_idVocabularyState=?,W_idWordBook=?,W_idLearningNumberDay=?,W_idCustomDegree=?,W_idState=?,W_wrongTimes=? Where W_Id=?";
        var values = [W_originalWord, W_translatedWord, W_Phrase, W_phraseMean, W_Avatar, W_learnTimes, W_dateCreated, W_Degree, W_linkPost, W_idVocabularyState, W_idWordBook, W_idLearningNumberDay, W_idCustomDegree, W_idState, W_wrongTimes, W_Id]
        if (W_Id) {
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

// Xóa word theo id word

exports.deleteWordById = async function(W_Id) {
    return new Promise(resolve => {
        var sql = "delete from word where W_Id=?";
        database.connection.query(sql, [W_Id], function(err, results, fields) {
            if (err) {
                resolve({ status: false })
            } else {
                resolve({ status: true })
            }

        })
    })
}

// Xóa word theo id wordbook

exports.deleteWordByIdWordBook = async function(W_idWordBook) {
    return new Promise(resolve => {
        var sql = "delete from word where W_idWordBook=?";
        database.connection.query(sql, [W_idWordBook], function(err, results, fields) {
            if (err) {
                resolve({ status: false })
            } else {
                resolve({ status: true })
            }

        })
    })
}

// Lấy số lượng từ của account


exports.getAnalyticWordByIdAccount = async function(AC_Id) {
    return new Promise(resolve => {
        var today = new Date
        var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
        var totalWord = 0
        var totalWordToday = 0
        var sql = "SELECT * FROM word" +
            " WHERE W_idWordBook IN (SELECT WB_ID FROM wordbook" +
            " WHERE WB_idAccount = ?)";
        database.connection.query(sql, [AC_Id], function(err, results, fields) {
            if (err) {
                resolve({ status: false })
            } else {
                totalWord = results.length
                for (var i = 0; i < results.length; i++) {
                    var dateCreated = results[i].W_dateCreated.getFullYear() + '-' + (results[i].W_dateCreated.getMonth() + 1) + '-' + results[i].W_dateCreated.getDate();
                    if (dateCreated == date) {
                        totalWordToday++;
                    }
                }

                resolve({
                    status: true,
                    data: {
                        totalWord: totalWord,
                        totalWordToday: totalWordToday
                    }
                })
            }

        })
    })
}