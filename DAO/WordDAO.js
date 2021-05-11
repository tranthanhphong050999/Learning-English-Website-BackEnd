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
        var sql = "select * from word where W_idWordBook=? and W_idState !=2";
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

exports.getWordByName = async function(W_originalWord, W_idWordBook, id) {
    return new Promise(resolve => {
        var sql = "";
        console.log("tim kiem :" + W_originalWord)
        switch (id) {
            case "":
                if (W_originalWord == "tokenlveenglish") {
                    sql = "select * from word where W_idWordBook = ? and W_idState != 2 ORDER BY W_originalWord ASC"
                } else {
                    sql = "select * from word where W_idWordBook = ? and W_idState != 2 and W_originalWord like ? ORDER BY W_originalWord ASC"
                }
                break;
            case "0":
                if (W_originalWord == "tokenlveenglish") {
                    sql = "select * from word where W_idWordBook = ? and W_idState != 2 ORDER BY W_originalWord ASC"
                } else {
                    sql = "select * from word where W_idWordBook = ? and W_idState != 2 and W_originalWord like ? ORDER BY W_originalWord ASC"
                }

                break;
            case "1":
                if (W_originalWord == "tokenlveenglish") {
                    sql = "select * from word where W_idWordBook = ? and W_idState != 2 ORDER BY W_originalWord ASC"
                } else {
                    sql = "select * from word where W_idWordBook = ? and W_idState != 2 and W_originalWord like ? ORDER BY W_originalWord ASC";
                }

                break;
            case "2":
                if (W_originalWord == "tokenlveenglish") {
                    sql = "select * from word where W_idWordBook = ? and W_idState != 2 ORDER BY W_originalWord DESC"
                } else {
                    sql = "select * from word where W_idWordBook = ? and W_idState != 2 and W_originalWord like ? ORDER BY W_originalWord DESC";
                }

                break;
            case "3":
                if (W_originalWord == "tokenlveenglish") {
                    sql = "select * from word  where W_idWordBook = ? and W_idState != 2 and (W_idState = 1 or W_idState = 5 or W_idState = 6)";
                } else {
                    sql = "select * from word  where W_idWordBook = ? and W_idState != 2 and W_originalWord like ? and (W_idState = 1 or W_idState = 5 or W_idState = 6)";
                }

                break;
        }
        database.connection.query(sql, [W_idWordBook, '%' + W_originalWord + '%'], function(err, results, fields) {
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
                    var dateCreated = results[i].W_addedWordDate.getFullYear() + '-' + (results[i].W_addedWordDate.getMonth() + 1) + '-' + results[i].W_addedWordDate.getDate();
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
                                var sqlGame = "select * from game"
                                database.connection.query(sqlGame, function(err, resultsGame, fields) {
                                    if (err) {
                                        resolve({
                                            status: false,
                                            data: "Lỗi query"
                                        })
                                    } else {
                                        if (resultsGame == "") {
                                            resolve({
                                                status: false,
                                                data: " Không có dữ liệu."
                                            })
                                        } else {
                                            var sqlAccount = "select * from account where AC_Id=?"
                                            database.connection.query(sqlAccount, [AC_Id], function(err, resultsAccount, fields) {
                                                if (err) {
                                                    resolve({
                                                        status: false,
                                                        data: "Lỗi query"
                                                    })
                                                } else {

                                                    var hop = new Array()
                                                    var tmp = new Array()
                                                    var results = new Array()
                                                    for (var indexCatalog = 0; indexCatalog < resultsCatalogStored.length; indexCatalog++) {
                                                        hop[indexCatalog] = new Array()
                                                    }
                                                    if (resultsAccount[0].AC_dateOnLine == "0000-00-00") {
                                                        hop = util.initDataCatalogStored(resultsHop1, resultsCatalogStored, resultsGame, hop)
                                                    } else {
                                                        hop = util.initDataCatalogStoredOffLine(resultsHop1, resultsCatalogStored, resultsGame, hop, resultsAccount[0].AC_dateOnLine)
                                                    }
                                                    for (var indexCatalog = 0; indexCatalog < resultsCatalogStored.length; indexCatalog++) {
                                                        if (hop[indexCatalog].length != 0) {
                                                            console.log(chalk.red("hop " + indexCatalog + " : " + hop[indexCatalog].length))
                                                            tmp.push(indexCatalog) // số lượng hộp có dữ liệu

                                                        }
                                                    }

                                                    results = util.getTenWordInCatalog(tmp, hop, results)
                                                    resolve({
                                                        status: true,
                                                        data: results
                                                    })
                                                }
                                            })

                                        }
                                    }
                                })

                            }

                        }

                    })
                }

            }

        })

    })
}

// cập nhật từ sau khi được trả lời câu hỏi 

exports.updateTenWordQuestion = async function(wordTrue, wordFalse, AC_Id) {
    return new Promise(resolve => {

        var dateNow = util.getDateNow(0);
        var arrWordTrue = wordTrue.split(",")
        var arrWordFalse = wordFalse.split(",")
        sqlEOOD = "SELECT * FROM expofoneday WHERE EOOD_dateCreated = ? and EOOD_idAccount=?"
        database.connection.query(sqlEOOD, [util.getDateNow(0), AC_Id], function(err, resultsEOOD, fields) {
            if (err) {
                resolve({
                    status: false,
                    data: "Lỗi Query"
                })
            } else {
                var sqlQueryEOOD = ""
                var values
                if (resultsEOOD == "") {
                    sqlQueryEOOD = "INSERT INTO expofoneday( EOOD_Exp,EOOD_dateCreated,EOOD_idAccount) VALUES ?"
                    values = [
                        [arrWordTrue.length, util.getDateNow(0), AC_Id]
                    ]
                } else {
                    sqlQueryEOOD = "UPDATE expofoneday SET EOOD_Exp= EOOD_Exp + " + arrWordTrue.length + " WHERE EOOD_idAccount=" + resultsEOOD[0].EOOD_idAccount
                    values = ""
                }
                database.connection.query(sqlQueryEOOD, [values], function(err, resultsQueryEOOD, fields) {
                    if (err) {
                        resolve({
                            status: false,
                            data: "Lỗi Query"
                        })
                    } else {


                        sqlWordTrue = "UPDATE word AS w SET w.W_dateCreated = ?, w.W_idCatalogStored = CASE  WHEN w.W_idCatalogStored = 5 THEN '5'WHEN w.W_idCatalogStored !=5 THEN w.W_idCatalogStored+1 ELSE'' END WHERE w.W_Id IN (?)"
                        database.connection.query(sqlWordTrue, [dateNow, arrWordTrue], function(err, resultsWordTrue, fields) {
                            if (err) {
                                resolve({ status: false, err: err })
                            } else {
                                //console.log(fields)
                                sqlWordFalse = "UPDATE word AS w SET w.W_idCatalogStored = 1,w.W_dateCreated = ? WHERE w.W_Id IN (?)"
                                database.connection.query(sqlWordFalse, [dateNow, arrWordFalse], function(err, resultsWordFalse, fields) {
                                    if (err) {
                                        resolve({ status: false, err: err })
                                    } else {
                                        sqlAccount = "UPDATE account SET AC_dateOnLine = ? Where AC_Id =?"
                                        database.connection.query(sqlAccount, [util.getDateNow(0), AC_Id], function(err, resultsAccount, fields) {
                                            if (err) {
                                                resolve({
                                                    status: false,
                                                    err: err
                                                })
                                            } else {
                                                //console.log(fields)

                                                resolve({ status: true })
                                            }
                                        })

                                    }

                                })
                            }

                        })

                    }
                })
            }
        })

    })

}

// Thống kê sổ từ theo id wordbook

exports.statisticsByIdWordBook = async function(W_idWordBook) {
    return new Promise(resolve => {
        var tuMoi = 0
        var dangHoc = 0
        var daThuoc = 0
        sql = "SELECT * from word Where W_idWordBook=?"
        database.connection.query(sql, [W_idWordBook], function(err, resultsWord, fields) {
            if (err) {
                resolve({
                    status: false,
                    data: "Lỗi query"
                })
            } else {
                if (resultsWord == "") {
                    resolve({
                        status: false,
                        data: "Không có dữ liệu"
                    })
                } else {
                    for (var indexWord = 0; indexWord < resultsWord.length; indexWord++) {
                        if (util.parseDate(resultsWord[indexWord].W_addedWordDate) == util.getDateNow(0)) {
                            tuMoi++;
                        }
                        if (resultsWord[indexWord].W_idState == 3 || resultsWord[indexWord].W_idState == 5) {
                            dangHoc++;
                        }
                        if (resultsWord[indexWord].W_idState == 4 || resultsWord[indexWord].W_idState == 6) {
                            daThuoc++;
                        }
                    }
                    var tmp = {
                        status: true,
                        tuMoi: tuMoi,
                        dangHoc: dangHoc,
                        daThuoc: daThuoc
                    }
                    resolve(tmp)
                }
            }
        })
    })
}

// Lấy tất cả bookofstore

exports.getAllBookOfStore = async function() {
    return new Promise(resolve => {
        sql = "select * from bookofstore"
        database.connection.query(sql, function(err, resultsBookOfStore, fields) {
            if (err) {
                resolve({
                    status: false,
                    data: "Lỗi query"
                })
            } else {
                if (resultsBookOfStore == "") {
                    resolve({
                        status: false,
                        data: "Không có dữ liệu"
                    })
                } else {
                    resolve({
                        status: true,
                        data: resultsBookOfStore
                    })
                }
            }
        })
    })
}

// lấy tất cả categoryofbook theo idbookofstore

exports.getAllCategoryOfBook = async function(COB_idBookOfStore) {
    return new Promise(resolve => {
        sql = "select * from categoryofbook where COB_idBookOfStore= ?"
        database.connection.query(sql, [COB_idBookOfStore], function(err, resultsCategoryOfBook, fields) {
            if (err) {
                resolve({
                    status: false,
                    data: "Lỗi query"
                })
            } else {
                if (resultsCategoryOfBook == "") {
                    resolve({
                        status: false,
                        data: "Không có dữ liệu"
                    })
                } else {
                    resolve({
                        status: true,
                        data: resultsCategoryOfBook
                    })
                }
            }
        })
    })
}

// Lấy tất cả wordofstore

exports.getAllWordOfStore = async function(WOS_idCategoryOfBook) {
        return new Promise(resolve => {
            sql = "select * from wordofstore where WOS_idCategoryOfBook= ?"
            database.connection.query(sql, [WOS_idCategoryOfBook], function(err, resultsWordOfStore, fields) {
                if (err) {
                    resolve({
                        status: false,
                        data: "Lỗi query"
                    })
                } else {
                    if (resultsWordOfStore == "") {
                        resolve({
                            status: false,
                            data: "Không có dữ liệu"
                        })
                    } else {
                        resolve({
                            status: true,
                            data: resultsWordOfStore
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