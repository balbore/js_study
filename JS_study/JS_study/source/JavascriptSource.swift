//
//  JavascriptData.swift
//  JS_study
//
//  Created by macbooka on 2021/03/21.
//

import Foundation

struct dataBinder {
    var id:Int
    var name:String
    var codeDcpData:[codeDcpBinder]
    var copyCodeData:[String]
    var rtnValData:[(title:String, descri:String)]
    var imageData:[Data]
}

struct codeDcpBinder {
    var id: Int
    var title: String
    var argsDcp:[(title:String, argsDetailDcp:String)]
    var codeDcp:String
    var rtnValDcp:(title:String, descri:String)
}





struct Data: Identifiable{
    var id: Int
    var codeId: Int
    var imageName: String
    var title: String
}

var stringDataArray:[Data] = makeDataString()
var arrayDataArray:[Data] = makeDataArray()


var codeDataSorce:[dataBinder] = [
    dataBinder(id: 0, name: "String", codeDcpData:stringData, copyCodeData: stringCodeData, rtnValData: stringRtnValData, imageData:stringDataArray),
    dataBinder(id: 1, name: "Array", codeDcpData:arrayData, copyCodeData: arrayCodeData, rtnValData: arrayRtnValData, imageData:arrayDataArray),
]













//String関係のデータ
func makeDataString() -> [Data] {
    
    var dataArray:[Data] = []
    dataArray.append(Data(id:  1, codeId:  0, imageName: "endsWith_st",           title: "startsWith()"))
    dataArray.append(Data(id:  2, codeId:  1, imageName: "endsWith_st",           title: "endsWith()"))
    dataArray.append(Data(id:  3, codeId:  2, imageName: "length_st",             title: "length"))
    dataArray.append(Data(id:  4, codeId:  3, imageName: "includes_st",           title: "includes()"))
    dataArray.append(Data(id:  5, codeId:  4, imageName: "match_st",              title: "match()"))
    dataArray.append(Data(id:  6, codeId:  5, imageName: "padStart(end)_st",      title: "padStart()"))
    dataArray.append(Data(id:  7, codeId:  6, imageName: "padStart(end)_st",      title: "padEnd()"))
    dataArray.append(Data(id:  8, codeId:  7, imageName: "toLower(Upper)case_st", title: "toLowerCase()"))
    dataArray.append(Data(id:  9, codeId:  8, imageName: "toLower(Upper)case_st", title: "toUpperCase()"))
    dataArray.append(Data(id: 10, codeId:  9, imageName: "trim_st",               title: "trim()"))
    dataArray.append(Data(id: 11, codeId: 10, imageName: "repeat_st",             title: "repeat()"))
    dataArray.append(Data(id: 12, codeId: 11, imageName: "replace_st",            title: "replace()"))
    dataArray.append(Data(id: 13, codeId: 12, imageName: "search_st",             title: "search()"))
    dataArray.append(Data(id: 14, codeId: 13, imageName: "slice_st",              title: "slice()"))
    dataArray.append(Data(id: 15, codeId: 14, imageName: "(last)indexOf_st",      title: "indexOf()"))
    dataArray.append(Data(id: 16, codeId: 15, imageName: "(last)indexOf_st",      title: "lastIndexOf()"))

    
    return dataArray
}

//配列関係のデータ
func makeDataArray() -> [Data] {
    
    var dataArray:[Data] = []
    dataArray.append(Data(id:  1, codeId:  0, imageName: "shiht_ar", title: "shiht()"))
    dataArray.append(Data(id:  2, codeId:  1, imageName: "slice_ar", title: "slice()"))
    dataArray.append(Data(id:  3, codeId:  2, imageName: "copyWithin_ar", title: "copyWithin()"))
    return dataArray
}
