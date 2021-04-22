var database = require("./database");
var mysql = require("mysql");
const { json } = require("body-parser");
var connection = database.connection;
var util = require("./Util.js")
const chalk = require("chalk");
const e = require("express");
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

exports.addWord = async function(W_originalWord, W_translatedWord, W_Phrase, W_phraseMean, W_Avatar, W_learnTimes, W_dateCreated, W_Degree, W_linkPost, W_idWordBook, W_idLearningNumberDay, W_idCustomDegree, W_idState, W_wrongTimes, W_idCatalogStored, W_ipaWord, W_typeOfWord, AC_Id) {
    return new Promise(resolve => {
        if (AC_Id) {
            var sqlCheckWord = "SELECT * FROM word" +
                " WHERE W_idWordBook IN (SELECT WB_ID FROM wordbook" +
                " WHERE WB_idAccount = ?)" +
                "AND W_originalWord = ?"
            database.connection.query(sqlCheckWord, [AC_Id, W_originalWord], function(err, resultsCheckWord, fields) {
                if (err) {
                    resolve({ status: false })
                } else {
                    if (resultsCheckWord == "") {
                        var sql = "INSERT INTO word (W_originalWord,W_translatedWord,W_Phrase,W_phraseMean,W_Avatar,W_learnTimes,W_dateCreated,W_Degree,W_linkPost,W_idWordBook,W_idLearningNumberDay,W_idCustomDegree,W_idState,W_wrongTimes,W_idCatalogStored,W_ipaWord,W_typeOfWord) VALUES ?";
                        var values = [
                            [W_originalWord, W_translatedWord, W_Phrase, W_phraseMean, W_Avatar, W_learnTimes, W_dateCreated, W_Degree, W_linkPost, W_idWordBook, W_idLearningNumberDay, W_idCustomDegree, W_idState, W_wrongTimes, W_idCatalogStored, W_ipaWord, W_typeOfWord]
                        ]
                        database.connection.query(sql, [values], function(err, results, fields) {
                            if (err) {
                                resolve({ status: false })
                            } else {
                                resolve({ status: true })
                            }

                        })
                    } else {
                        resolve({
                            status: false,
                            data: "Từ này đã được thêm rồi"
                        })
                    }
                }
            })
        } else {
            resolve({
                status: false,
                data: "bạn chưa đăng nhập"
            })
        }


    })
}

exports.getWordByName = async function(W_originalWord, id) {
    return new Promise(resolve => {
        var sql = "";
        switch (id) {
            case "0":
                sql = "select * from word where W_originalWord like?";
                break;
            case "1":
                sql = "select * from word where W_originalWord like? ORDER BY W_originalWord ASC";
                break;
            case "2":
                sql = "select * from word where W_originalWord like? ORDER BY W_originalWord DESC";
                break;
            case "3":
                sql = "select * from word where W_originalWord like? and W_idState = 1";
                break;
        }
        database.connection.query(sql, ['%' + W_originalWord + '%'], function(err, results, fields) {
            if (err) {
                resolve({ status: false })
            } else {
                if (results == "") {
                    resolve({ status: false })
                } else {
                    resolve({
                        status: true,
                        data: results
                    })
                }

            }
        })



    })
}

// update state

exports.updateWordIdState = async function(W_Id, W_idState) {
    return new Promise(resolve => {
        var sql = "UPDATE word SET W_idState=? Where W_Id=?";
        var values = [W_idState, W_Id]
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

// Sửa

exports.updateWord = async function(W_Id, W_originalWord, W_translatedWord, W_Phrase, W_phraseMean, W_Avatar, W_learnTimes, W_dateCreated, W_Degree, W_linkPost, W_idWordBook, W_idLearningNumberDay, W_idCustomDegree, W_idState, W_wrongTimes, W_idCatalogStored, W_ipaWord, W_typeOfWord) {
    return new Promise(resolve => {
        var sql = "UPDATE word SET W_originalWord=?,W_translatedWord=?,W_Phrase=?,W_phraseMean=?,W_Avatar=?,W_learnTimes=?,W_dateCreated=?,W_Degree=?,W_linkPost=?,W_idWordBook=?,W_idLearningNumberDay=?,W_idCustomDegree=?,W_idState=?,W_wrongTimes=?,W_idCatalogStored=?,W_ipaWord=?,W_typeOfWord=? Where W_Id=?";
        var values = [W_originalWord, W_translatedWord, W_Phrase, W_phraseMean, W_Avatar, W_learnTimes, W_dateCreated, W_Degree, W_linkPost, W_idWordBook, W_idLearningNumberDay, W_idCustomDegree, W_idState, W_wrongTimes, W_idCatalogStored, W_ipaWord, W_typeOfWord, W_Id]
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


// lấy 10 từ để làm câu hỏi

exports.getTenWordByIdCatalogStored = async function(AC_Id) {
    var numberOfCatalog = 0
    return new Promise(resolve => {
        var sqlHop1 = "SELECT * FROM word as w" +
            " WHERE w.W_idWordBook in (SELECT wb.WB_Id FROM wordbook as wb" +
            " WHERE wb.WB_idAccount = ?)"
        database.connection.query(sqlHop1, [AC_Id], function(err, resultsHop1, fields) {
            if (err) {
                console.log("err" + err)
                resolve({ status: false })
            } else {
                if (resultsHop1 == "") {
                    resolve({ status: false })
                } else {
                    var sqlCatalogStored = "select * from catalogstored"
                    database.connection.query(sqlCatalogStored, function(err, resultsCatalogStored, fields) {
                        if (err) {
                            resolve({
                                status: false,
                                data: "Lỗi query"
                            })
                        } else {
                            if (resultsCatalogStored == "") {
                                resolve({
                                    status: false,
                                    data: "không có dữ liệu"
                                })
                            } else {
                                var hop = new Array()
                                var tmp = new Array()
                                var results = new Array()
                                for (var i = 0; i < resultsCatalogStored.length; i++) {
                                    hop[i] = new Array()
                                    for (var j = 0; j < resultsHop1.length; j++) {
                                        console.log("1 : " + resultsHop1[j].W_idCatalogStored)
                                        console.log("2 : " + resultsCatalogStored[i].CS_Id)
                                        console.log("3 : " + resultsHop1[j].W_dateCreated)
                                        let date = resultsHop1[j].W_dateCreated
                                        console.log("date: " + date)
                                        var dateCreated = date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate();
                                        console.log("4 :" + dateCreated)
                                        console.log("datenow" + util.getDateNow(resultsCatalogStored[i].CS_numDay))
                                        console.log(chalk.red("idstate" + resultsHop1[i].W_idState))
                                        if (resultsHop1[j].W_idCatalogStored == resultsCatalogStored[i].CS_Id && util.getDateNow(resultsCatalogStored[i].CS_numDay) == dateCreated && resultsHop1[j].W_idState != 4 && resultsHop1[j].W_idState != 6) {
                                            console.log(resultsHop1[j])
                                            hop[i].push(resultsHop1[j])
                                        }
                                    }
                                    if (hop[i].length != 0) {
                                        console.log(chalk.red("hop " + i + " : " + hop[i].length))
                                        tmp.push(i) // số lượng hộp có dữ liệu

                                    }

                                }
                                console.log(tmp.length)
                                switch (tmp.length) {
                                    case 0:
                                        console.log("không tìm thấy")
                                        break;
                                    case 1:
                                        results[i] = util.getRow(hop[0], 10)
                                        break;
                                    case 2:
                                        var numberRowInResults = 0;
                                        for (var i = tmp.length - 1; i >= 0; i--) {
                                            if (i == 1) {
                                                results[i] = util.getRow(hop[tmp[i]], 4)
                                                numberRowInResults += results[i].length
                                            }
                                            if (i == 0) {
                                                if (numberRowInResults < 10 - 4) {
                                                    results[i] = util.getRow(hop[tmp[i]], 10 - numberRowInResults)
                                                } else {
                                                    results[i] = util.getRow(hop[tmp[i]], 6)
                                                }
                                            }
                                        }
                                        break;
                                    case 3:
                                        var numberRowInResults = 0;
                                        for (var i = tmp.length - 1; i >= 0; i--) {
                                            if (i == 2) {
                                                results[i] = util.getRow(hop[tmp[i]], 2)
                                                numberRowInResults += results[i].length
                                            }
                                            if (i == 1) {
                                                results[i] = util.getRow(hop[tmp[i]], 3)
                                                numberRowInResults += results[i].length
                                            }
                                            if (i == 0) {
                                                if (numberRowInResults < 10 - 5) {
                                                    results[i] = util.getRow(hop[tmp[i]], 10 - numberRowInResults)
                                                } else {
                                                    results[i] = util.getRow(hop[tmp[i]], 5)
                                                }
                                            }
                                        }
                                        break;
                                    case 4:
                                        var numberRowInResults = 0;
                                        for (var i = tmp.length - 1; i >= 0; i--) {

                                            if (i == 3) {
                                                results[i] = util.getRow(hop[tmp[i]], 1)
                                                numberRowInResults += results[i].length
                                            }
                                            if (i == 2) {
                                                results[i] = util.getRow(hop[tmp[i]], 2)
                                                numberRowInResults += results[i].length
                                            }
                                            if (i == 1) {
                                                results[i] = util.getRow(hop[tmp[i]], 3)
                                                numberRowInResults += results[i].length
                                            }
                                            if (i == 0) {
                                                if (numberRowInResults < 10 - 4) {
                                                    results[i] = util.getRow(hop[tmp[i]], 10 - numberRowInResults)
                                                } else {
                                                    results[i] = util.getRow(hop[tmp[i]], 4)
                                                }
                                            }
                                        }
                                        break;
                                    case 5:
                                        var numberRowInResults = 0;
                                        for (var i = tmp.length - 1; i >= 0; i--) {
                                            if (i == 4) {
                                                results[i] = util.getRow(hop[i], 1)
                                                numberRowInResults += results[i].length
                                            }
                                            if (i == 3) {
                                                results[i] = util.getRow(hop[i], 2)
                                                numberRowInResults += results[i].length
                                            }
                                            if (i == 2) {
                                                results[i] = util.getRow(hop[i], 1)
                                                numberRowInResults += results[i].length
                                            }
                                            if (i == 1) {
                                                results[i] = util.getRow(hop[i], 3)
                                                numberRowInResults += results[i].length
                                            }
                                            if (i == 0) {
                                                if (numberRowInResults < 10 - 3) {
                                                    results[i] = util.getRow(hop[i], 10 - numberRowInResults)
                                                } else {
                                                    results[i] = util.getRow(hop[i], 3)
                                                }
                                            }
                                        }
                                        //results.push(util.getRow(hop[0], 3))
                                        console.log(results)
                                        break;
                                }
                                resolve(results)
                            }

                        }

                    })
                }

            }

        })

    })
}

// exports.getTenWordByIdCatalogStored = async function(AC_Id) {
//     var catalogStored = null
//     var hop1;
//     var hop2 = null
//     var hop3 = null
//     var hop4 = null
//     var hop5 = null

//     var numberOfCatalog = 0
//     return new Promise(resolve => {
//         var hop = new Array()
//         var sqlCatalogStored = "select * from catalogstored"
//         database.connection.query(sqlCatalogStored, function(err, resultsCatalogStored, fields) {
//             if (err) {
//                 catalogStored = {
//                     status: false,
//                     data: "Lỗi query"
//                 }
//             } else {
//                 if (resultsCatalogStored == "") {
//                     catalogStored = {
//                         status: false,
//                         data: "không có dữ liệu"
//                     }
//                 } else {
//                     catalogStored = {
//                         status: true,
//                         data: resultsCatalogStored
//                     }
//                     for (var i = 0; i < resultsCatalogStored.length; i++) {
//                         var sqlHop1 = "SELECT * FROM word as w" +
//                             " WHERE w.W_idWordBook in (SELECT wb.WB_Id FROM wordbook as wb" +
//                             " WHERE wb.WB_idAccount = ?)" +
//                             " AND w.W_idCatalogStored= ?" +
//                             " AND w.W_dateCreated = ?"
//                         database.connection.query(sqlHop1, [AC_Id, resultsCatalogStored[i].CS_Id, "2021-04-19"], async function(err, resultsHop1, fields) {
//                             if (err) {
//                                 console.log("err" + err)
//                                 hop.push("false")
//                             } else {
//                                 if (resultsHop1 == "") {
//                                     hop.push("")
//                                 } else {
//                                    await hop.push(resultsHop1)
//                                     console.log(hop)
//                                 }

//                             }

//                         })
//                     }
//                     resolve(hop)

//                 }

//             }

//         })



//     })
// }