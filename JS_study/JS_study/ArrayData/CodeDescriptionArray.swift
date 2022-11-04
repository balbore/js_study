//
//  CodeDescriptionArray.swift
//  JS_study
//
//  Created by macbooka on 2021/06/28.
//

import Foundation
import SwiftUI

/*　　これはStringDataにて宣言済み　この構造体を使い回す
 struct codeDcp {
    
    var id: Int
    var codeId: Int
    var title: String
    var argsStringData:(  id: Int, data:[(tit:String, data:String)]  )
    var codeDescri:String
    var RtnValDescri:(title:String, descri:String)
    
}
 */

//Source:

//"concat",
//"copyWithin",
//"entries",
//"every",
//"fill",
//"filter",
//"find",
//"findIndex",
//"flat",
//"flatMap",
//"forEach",
//"from",
//"includes",
//"indexOf",
//"isArray",
//"join",
//"keys",
//"lastIndexOf",
//"map",
//"of",
//"pop",
//"push",
//"reduce",
//"reduceRight",
//"reverse",
//"shift",
//"slice",
//"some",
//"sort",
//"splice",
//"toLocaleString",
//"toString",
//"unshift",
//"values"





var arrayData:[codeDcpBinder] = [
    
    codeDcpBinder(id:0 , title: "concat()", argsDcp: argsArrayDetailsData[0], codeDcp:dcpArrayData[0], rtnValDcp:arrayRtnValData[0]),
    codeDcpBinder(id:1 , title: "copyWithin(引数1 [,引数2[, 引数3]])", argsDcp: argsArrayDetailsData[1], codeDcp:dcpArrayData[1], rtnValDcp:arrayRtnValData[1]),
    codeDcpBinder(id:2 , title: "entries()", argsDcp: argsArrayDetailsData[2], codeDcp:dcpArrayData[2], rtnValDcp:arrayRtnValData[2]),
    codeDcpBinder(id:3 , title: "every()", argsDcp: argsArrayDetailsData[3], codeDcp:dcpArrayData[3], rtnValDcp:arrayRtnValData[3]),
    codeDcpBinder(id:4 , title: "fill()", argsDcp: argsArrayDetailsData[4], codeDcp:dcpArrayData[4], rtnValDcp:arrayRtnValData[4]),
    codeDcpBinder(id:5 , title: "filter()", argsDcp: argsArrayDetailsData[5], codeDcp:dcpArrayData[5], rtnValDcp:arrayRtnValData[5]),
    codeDcpBinder(id:6 , title: "find()", argsDcp: argsArrayDetailsData[6], codeDcp:dcpArrayData[6], rtnValDcp:arrayRtnValData[6]),
    codeDcpBinder(id:7 , title: "findIndex()", argsDcp: argsArrayDetailsData[7], codeDcp:dcpArrayData[7], rtnValDcp:arrayRtnValData[7]),
    codeDcpBinder(id:8 , title: "flat()", argsDcp: argsArrayDetailsData[8], codeDcp:dcpArrayData[8], rtnValDcp:arrayRtnValData[8]),
    codeDcpBinder(id:9 , title: "flatMap()", argsDcp: argsArrayDetailsData[9], codeDcp:dcpArrayData[9], rtnValDcp:arrayRtnValData[9]),
    codeDcpBinder(id:10 , title: "forEach()", argsDcp: argsArrayDetailsData[10], codeDcp:dcpArrayData[10], rtnValDcp:arrayRtnValData[10]),
    codeDcpBinder(id:11 , title: "from()", argsDcp: argsArrayDetailsData[11], codeDcp:dcpArrayData[11], rtnValDcp:arrayRtnValData[11]),
    codeDcpBinder(id:12 , title: "includes()", argsDcp: argsArrayDetailsData[12], codeDcp:dcpArrayData[12], rtnValDcp:arrayRtnValData[12]),
    codeDcpBinder(id:13 , title: "indexOf()", argsDcp: argsArrayDetailsData[13], codeDcp:dcpArrayData[13], rtnValDcp:arrayRtnValData[13]),
    codeDcpBinder(id:14 , title: "isArray()", argsDcp: argsArrayDetailsData[14], codeDcp:dcpArrayData[14], rtnValDcp:arrayRtnValData[14]),
    codeDcpBinder(id:15 , title: "join()", argsDcp: argsArrayDetailsData[15], codeDcp:dcpArrayData[15], rtnValDcp:arrayRtnValData[15]),
    codeDcpBinder(id:16 , title: "keys()", argsDcp: argsArrayDetailsData[16], codeDcp:dcpArrayData[16], rtnValDcp:arrayRtnValData[16]),
    codeDcpBinder(id:17 , title: "lastIndexOf()", argsDcp: argsArrayDetailsData[17], codeDcp:dcpArrayData[17], rtnValDcp:arrayRtnValData[17]),
    codeDcpBinder(id:18 , title: "map()", argsDcp: argsArrayDetailsData[18], codeDcp:dcpArrayData[18], rtnValDcp:arrayRtnValData[18]),
    codeDcpBinder(id:19 , title: "of()", argsDcp: argsArrayDetailsData[19], codeDcp:dcpArrayData[19], rtnValDcp:arrayRtnValData[19]),
    codeDcpBinder(id:20 , title: "pop()", argsDcp: argsArrayDetailsData[20], codeDcp:dcpArrayData[20], rtnValDcp:arrayRtnValData[20]),
    codeDcpBinder(id:21 , title: "push()", argsDcp: argsArrayDetailsData[21], codeDcp:dcpArrayData[21], rtnValDcp:arrayRtnValData[21]),
    codeDcpBinder(id:22 , title: "reduce()", argsDcp: argsArrayDetailsData[22], codeDcp:dcpArrayData[22], rtnValDcp:arrayRtnValData[22]),
    codeDcpBinder(id:23 , title: "reduceRight()", argsDcp: argsArrayDetailsData[23], codeDcp:dcpArrayData[23], rtnValDcp:arrayRtnValData[23]),
    codeDcpBinder(id:24 , title: "reverse()", argsDcp: argsArrayDetailsData[24], codeDcp:dcpArrayData[24], rtnValDcp:arrayRtnValData[24]),
    codeDcpBinder(id:25 , title: "shift()", argsDcp: argsArrayDetailsData[25], codeDcp:dcpArrayData[25], rtnValDcp:arrayRtnValData[25]),
    codeDcpBinder(id:26 , title: "slice()", argsDcp: argsArrayDetailsData[26], codeDcp:dcpArrayData[26], rtnValDcp:arrayRtnValData[26]),
    codeDcpBinder(id:27 , title: "some()", argsDcp: argsArrayDetailsData[27], codeDcp:dcpArrayData[27], rtnValDcp:arrayRtnValData[27]),
    codeDcpBinder(id:28 , title: "sort()", argsDcp: argsArrayDetailsData[28], codeDcp:dcpArrayData[28], rtnValDcp:arrayRtnValData[28]),
    codeDcpBinder(id:29 , title: "splice()", argsDcp: argsArrayDetailsData[29], codeDcp:dcpArrayData[29], rtnValDcp:arrayRtnValData[29]),
    codeDcpBinder(id:30 , title: "toLocaleString()", argsDcp: argsArrayDetailsData[30], codeDcp:dcpArrayData[30], rtnValDcp:arrayRtnValData[30]),
    codeDcpBinder(id:31 , title: "toString()", argsDcp: argsArrayDetailsData[31], codeDcp:dcpArrayData[31], rtnValDcp:arrayRtnValData[31]),
    codeDcpBinder(id:32 , title: "unshift()", argsDcp: argsArrayDetailsData[32], codeDcp:dcpArrayData[32], rtnValDcp:arrayRtnValData[32]),
    codeDcpBinder(id:33 , title: "values()", argsDcp: argsArrayDetailsData[33], codeDcp:dcpArrayData[33], rtnValDcp:arrayRtnValData[33]),
 

]




//    コードの説明データ
var dcpArrayData:[String] = [
//    0 shift
    """
    配列のインデックス番号0番目にあたる要素(配列の先頭の要素)を取り除き
    取り除かれた値を返します
    配列の中身が0個の場合は undefind を返します
    """,
    
//    1 concat
    """
    配列に何かを連結したい時に使います
    連結した新しい配列はシャローコピー(1次元の配列要素までの浅いコピー)されて返ってきます
    """,
//    2 copyWithin
    """
    配列の一部の区間を任意の位置から貼り付けたい時になどに用います
    """,
//    3 entries
    """
    配列内の各要素に対する[キー, 値]のペアを含む新しい Array イテレーターオブジェクトを返します
    """,
//    4 every
    """
    """,
//    5 fill
    """
    """,
//    6 filter
    """
    """,
//    7 find
    """
    """,
//    8 findIndex
    """
    """,
//    9 flat
    """
    """,
//    10 flatMap
    """
    """,
//    11 forEach
    """
    """,
//    12 from
    """
    """,
//    13 includes
    """
    """,
//    14 indexOf
    """
    """,
//    15 isArray
    """
    """,
//    16 join
    """
    """,
//    17 keys
    """
    """,
//    18 lastIndexOf
    """
    """,
//    19 map
    """
    """,
//    20 of
    """
    """,
//    21 pop
    """
    """,
//    22 push
    """
    """,
//    23 reduce
    """
    """,
//    24 reduceRight
    """
    """,
//    25 reverse
    """
    """,
//    26 shift
    """
    """,
//    27 slice
    """
    """,
//    28 some
    """
    """,
//    29 sort
    """
    """,
//    30 splice
    """
    """,
//    31 toLocaleString
    """
    """,
//    32 toString
    """
    """,
//    33 unshift
    """
    """,
//    34 values
    """
    """,

    
    
]

//  引数の詳細データ
var argsArrayDetailsData:[[(title:String, argsDetailDcp:String)]] = [
    
    

//    0 "concat"
    [
        (
            title: "引数1:(任意の値や配列)　連結する配列や値",
            argsDetailDcp: """
            このメソッドを使う配列に連結したい値や配列を入れます
            """
        )
    ],
//    1 "copyWithin"
    [
        (
            title: "引数1:(Int)　コピー先のインデックス番号",
            argsDetailDcp: """
            コピー先となる、0 から始まるインデックス番号を入れます
            負の値の場合は後ろから数えられます
            この際は 1 から数えることに注意してください
            """
        )
    ],
//    2 "entries"
    [
        (
            title: "引数2:(Int)[省可]　コピーを始めるインデックス番号",
            argsDetailDcp: """
            コピー元の始まりを表す 0 から始まるインデックス番号を入れます
            負の値の場合は後から数えられます
            この際は 1 から数えることに注意してください
            """
        )
    ],
//    3 "every"
    [
        (
            title: "引数3:(Int)[省可]　コピーの終端を表すインデックス番号",
            argsDetailDcp: """
            要素のコピー元の終端を表す 0 から始まるインデックス番号です(このインデックス番号にあたる部分はコピーの対象にならないことに注意)
            負の値の場合は後から数えられます
            この際は 1 から数えることに注意してください
            """
        )
    ],
//    4 "fill"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    5 "filter"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    6 "find"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    7 "findIndex"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    8 "flat"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    9 "flatMap"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    10 "forEach"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    11 "from"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    12 "includes"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    13 "indexOf"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    14 "isArray"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    15 "join"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    16 "keys"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    17 "lastIndexOf"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    18 "map"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    19 "of"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    20 "pop"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    21 "push"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    22 "reduce"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    23 "reduceRight"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    24 "reverse"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    25 "shift"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    26 "slice"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    27 "some"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    28 "sort"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    29 "splice"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    30 "toLocaleString"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    31 "toString"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    32 "unshift"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],
//    33 "values"
    [
        (
            title: "",
            argsDetailDcp: """
            
            """
        )
    ],


]

