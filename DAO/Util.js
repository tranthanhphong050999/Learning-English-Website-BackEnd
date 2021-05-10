const { json } = require("body-parser");
const chalk = require("chalk");
// hàm get row data

function getRow(array, numberRow) {
    var tmp = new Array()
    if (array.length < numberRow) {
        for (var i = 0; i < array.length; i++) { tmp.push(array[i]) }
    } else {
        for (var i = 0; i < numberRow; i++) { tmp.push(array[i]) }
    }
    return tmp
}

// hàm lấy ngày hiện tại

exports.getDateNow = function(numberDate) {
    let dateNow = Date.now() - (24 * 60 * 60 * 1000) * numberDate
    let dateTmp = new Date(dateNow)
    var month = ((dateTmp.getMonth() + 1) < 10) ? ("0" + (dateTmp.getMonth() + 1)) : (dateTmp.getMonth() + 1)
    var date = ((dateTmp.getDate()) < 10) ? ("0" + (dateTmp.getDate())) : (dateTmp.getDate())
    var dateCreatedNow = dateTmp.getFullYear() + '-' + month + '-' + date;
    console.log("now :" + dateCreatedNow)
    return dateCreatedNow
}

function getDateNow(numberDate) {
    let dateNow = Date.now() - (24 * 60 * 60 * 1000) * numberDate
    let dateTmp = new Date(dateNow)
    var month = ((dateTmp.getMonth() + 1) < 10) ? ("0" + (dateTmp.getMonth() + 1)) : (dateTmp.getMonth() + 1)
    var date = ((dateTmp.getDate()) < 10) ? ("0" + (dateTmp.getDate())) : (dateTmp.getDate())
    var dateCreatedNow = dateTmp.getFullYear() + '-' + month + '-' + date;
    console.log("now :" + dateCreatedNow)
    return dateCreatedNow
}

function checkInArray(number, array) {
    var tmp = false;
    for (var i = 0; i < array.length; i++) {
        if (array[i] == number) {
            tmp = true
        }
    }
    return tmp;
}

exports.getNumDateOffLine = function(day) {
    let date = Date.now() - day.getTime()
    return Math.floor(date / (24 * 60 * 60 * 1000))
}

function getNumDateOffLine(day) {
    let date = Date.now() - day.getTime()
    return Math.floor(date / (24 * 60 * 60 * 1000))
}

function getRanDom(max, array) {
    var number = Math.floor(Math.random() * max);
    if (checkInArray(array, number) == false) {
        return number
    } else {
        return getRanDom(max, array)
    }


}

function getDataAnswer(tmp, results) {
    var data = "";
    for (var indexTmp = 0; indexTmp < 4; indexTmp++) {
        var number = getRanDom(results.length, tmp)

        tmp.push(number)

        if (indexTmp == 3) {
            data += results[number]

        } else {
            data += results[number] + ";"

        }
    }
    return data
}

exports.getTenWordInCatalog = function(tmp, hop, results) {
    switch (tmp.length) {
        case 0:
            console.log("không tìm thấy")
            break;
        case 1:
            console.log("vô 1 rồi nè.")
            results[0] = getRow(hop[tmp[0]], 10)
            break;
        case 2:
            var numberRowInResults = 0;
            for (var i = tmp.length - 1; i >= 0; i--) {
                if (i == 1) {
                    results[i] = getRow(hop[tmp[i]], 4)
                    numberRowInResults += results[i].length
                }
                if (i == 0) {
                    if (numberRowInResults < 10 - 4) {
                        results[i] = getRow(hop[tmp[i]], 10 - numberRowInResults)
                    } else {
                        results[i] = getRow(hop[tmp[i]], 6)
                    }
                }
            }
            break;
        case 3:
            var numberRowInResults = 0;
            for (var i = tmp.length - 1; i >= 0; i--) {
                if (i == 2) {
                    results[i] = getRow(hop[tmp[i]], 2)
                    numberRowInResults += results[i].length
                }
                if (i == 1) {
                    results[i] = getRow(hop[tmp[i]], 3)
                    numberRowInResults += results[i].length
                }
                if (i == 0) {
                    if (numberRowInResults < 10 - 5) {
                        results[i] = getRow(hop[tmp[i]], 10 - numberRowInResults)
                    } else {
                        results[i] = getRow(hop[tmp[i]], 5)
                    }
                }
            }
            break;
        case 4:
            var numberRowInResults = 0;
            for (var i = tmp.length - 1; i >= 0; i--) {

                if (i == 3) {
                    results[i] = getRow(hop[tmp[i]], 1)
                    numberRowInResults += results[i].length
                }
                if (i == 2) {
                    results[i] = getRow(hop[tmp[i]], 2)
                    numberRowInResults += results[i].length
                }
                if (i == 1) {
                    results[i] = getRow(hop[tmp[i]], 3)
                    numberRowInResults += results[i].length
                }
                if (i == 0) {
                    if (numberRowInResults < 10 - 4) {
                        results[i] = getRow(hop[tmp[i]], 10 - numberRowInResults)
                    } else {
                        results[i] = getRow(hop[tmp[i]], 4)
                    }
                }
            }
            break;
        case 5:
            var numberRowInResults = 0;
            for (var i = tmp.length - 1; i >= 0; i--) {
                if (i == 4) {
                    results[i] = getRow(hop[i], 1)
                    numberRowInResults += results[i].length
                }
                if (i == 3) {
                    results[i] = getRow(hop[i], 2)
                    numberRowInResults += results[i].length
                }
                if (i == 2) {
                    results[i] = getRow(hop[i], 1)
                    numberRowInResults += results[i].length
                }
                if (i == 1) {
                    results[i] = getRow(hop[i], 3)
                    numberRowInResults += results[i].length
                }
                if (i == 0) {
                    if (numberRowInResults < 10 - 3) {
                        results[i] = getRow(hop[i], 10 - numberRowInResults)
                    } else {
                        results[i] = getRow(hop[i], 3)
                    }
                }
            }
            //results.push(util.getRow(hop[0], 3))
            console.log(results)
            break;
    }
    return results
}

exports.initDataCatalogStored = function(resultsHop1, resultsCatalogStored, resultsGame, hop) {

    for (var indexResultsHop = 0; indexResultsHop < resultsHop1.length; indexResultsHop++) {
        let dateTmp = resultsHop1[indexResultsHop].W_dateCreated
        console.log("datetmp: " + dateTmp)
        var month = ((dateTmp.getMonth() + 1) < 10) ? ("0" + (dateTmp.getMonth() + 1)) : (dateTmp.getMonth() + 1)
        var date = ((dateTmp.getDate()) < 10) ? ("0" + (dateTmp.getDate())) : (dateTmp.getDate())
        var dateCreated = dateTmp.getFullYear() + '-' + month + '-' + date;
        console.log("datetmp: " + dateCreated)
        if (resultsHop1[indexResultsHop].W_idCatalogStored == 1) {
            if ((getDateNow(resultsCatalogStored[resultsHop1[indexResultsHop].W_idCatalogStored - 1].CS_numDay) == dateCreated) && resultsHop1[indexResultsHop].W_idState != 2 && resultsHop1[indexResultsHop].W_idState != 4 && resultsHop1[indexResultsHop].W_idState != 6) {

                var tmpFourAnswerArray = new Array()
                var tmpPharseAnswerArray = new Array()


                var resultsFourAnswer = resultsGame[0].G_Word.split(";")
                var resultsPharseAnswer = resultsGame[1].G_Word.split(";")
                var fourAnswer = getDataAnswer(tmpFourAnswerArray, resultsFourAnswer)
                var pharseAnswer = getDataAnswer(tmpPharseAnswerArray, resultsPharseAnswer)

                console.log(chalk.red(fourAnswer))
                console.log(chalk.red(pharseAnswer))
                var tmpResults = {
                    fourAnswer: fourAnswer,
                    pharseAnswer: pharseAnswer,
                    Word: resultsHop1[indexResultsHop]
                }
                hop[resultsHop1[indexResultsHop].W_idCatalogStored - 1].push(tmpResults)
            }
        } else {
            if (getDateNow(resultsCatalogStored[resultsHop1[indexResultsHop].W_idCatalogStored - 1].CS_numDay) == dateCreated && resultsHop1[indexResultsHop].W_idState != 4 && resultsHop1[indexResultsHop].W_idState != 6) {

                var tmpFourAnswerArray = new Array()
                var tmpPharseAnswerArray = new Array()


                var resultsFourAnswer = resultsGame[0].G_Word.split(";")
                var resultsPharseAnswer = resultsGame[1].G_Word.split(";")
                var fourAnswer = getDataAnswer(tmpFourAnswerArray, resultsFourAnswer)
                var pharseAnswer = getDataAnswer(tmpPharseAnswerArray, resultsPharseAnswer)

                console.log(chalk.red(fourAnswer))
                console.log(chalk.red(pharseAnswer))
                var tmpResults = {
                    fourAnswer: fourAnswer,
                    pharseAnswer: pharseAnswer,
                    Word: resultsHop1[indexResultsHop]
                }
                hop[resultsHop1[indexResultsHop].W_idCatalogStored - 1].push(tmpResults)
            }
        }
    }
    return hop
}

exports.initDataCatalogStoredOffLine = function(resultsHop1, resultsCatalogStored, resultsGame, hop, AC_dateOnLine) {

    for (var indexResultsHop = 0; indexResultsHop < resultsHop1.length; indexResultsHop++) {
        let dateTmp = resultsHop1[indexResultsHop].W_dateCreated
        console.log("datetmp: " + dateTmp)
        var month = ((dateTmp.getMonth() + 1) < 10) ? ("0" + (dateTmp.getMonth() + 1)) : (dateTmp.getMonth() + 1)
        var date = ((dateTmp.getDate()) < 10) ? ("0" + (dateTmp.getDate())) : (dateTmp.getDate())
        var dateCreated = dateTmp.getFullYear() + '-' + month + '-' + date;
        console.log("date: " + dateCreated)
        if (resultsHop1[indexResultsHop].W_idCatalogStored == 1) {
            console.log(getNumDateOffLine(AC_dateOnLine))
            if ((getDateNow(resultsCatalogStored[resultsHop1[indexResultsHop].W_idCatalogStored - 1].CS_numDay + getNumDateOffLine(AC_dateOnLine)) == dateCreated) && resultsHop1[indexResultsHop].W_idState != 2 && resultsHop1[indexResultsHop].W_idState != 4 && resultsHop1[indexResultsHop].W_idState != 6) {

                var tmpFourAnswerArray = new Array()
                var tmpPharseAnswerArray = new Array()


                var resultsFourAnswer = resultsGame[0].G_Word.split(";")
                var resultsPharseAnswer = resultsGame[1].G_Word.split(";")
                var fourAnswer = getDataAnswer(tmpFourAnswerArray, resultsFourAnswer)
                var pharseAnswer = getDataAnswer(tmpPharseAnswerArray, resultsPharseAnswer)

                console.log(chalk.red(fourAnswer))
                console.log(chalk.red(pharseAnswer))
                var tmpResults = {
                    fourAnswer: fourAnswer,
                    pharseAnswer: pharseAnswer,
                    Word: resultsHop1[indexResultsHop]
                }
                hop[resultsHop1[indexResultsHop].W_idCatalogStored - 1].push(tmpResults)
            }
        } else {
            if (getDateNow(resultsCatalogStored[resultsHop1[indexResultsHop].W_idCatalogStored - 1].CS_numDay + getNumDateOffLine(AC_dateOnLine)) == dateCreated && resultsHop1[indexResultsHop].W_idState != 4 && resultsHop1[indexResultsHop].W_idState != 6) {

                var tmpFourAnswerArray = new Array()
                var tmpPharseAnswerArray = new Array()


                var resultsFourAnswer = resultsGame[0].G_Word.split(";")
                var resultsPharseAnswer = resultsGame[1].G_Word.split(";")
                var fourAnswer = getDataAnswer(tmpFourAnswerArray, resultsFourAnswer)
                var pharseAnswer = getDataAnswer(tmpPharseAnswerArray, resultsPharseAnswer)

                console.log(chalk.red(fourAnswer))
                console.log(chalk.red(pharseAnswer))
                var tmpResults = {
                    fourAnswer: fourAnswer,
                    pharseAnswer: pharseAnswer,
                    Word: resultsHop1[indexResultsHop]
                }
                hop[resultsHop1[indexResultsHop].W_idCatalogStored - 1].push(tmpResults)
            }
        }
    }
    return hop
}