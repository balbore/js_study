//
//  dcpStringData.swift
//  JS_study
//
//  Created by macbooka on 2021/04/03.
//

import Foundation





//StringData



    var stringData:[codeDcpBinder] = [
        codeDcpBinder(id:0   , title: "startsWith(引数1 [, 引数2])" , argsDcp:  argsStringDetailData[ 0], codeDcp:dcpStringData[0], rtnValDcp:stringRtnValData[0]),
        codeDcpBinder(id:1   , title: "endsWith(引数1 [, 引数2])" , argsDcp:   argsStringDetailData[ 1], codeDcp:dcpStringData[1], rtnValDcp:stringRtnValData[1]),
        codeDcpBinder(id:2   , title: "length()" , argsDcp:   argsStringDetailData[ 2], codeDcp:dcpStringData[2], rtnValDcp:stringRtnValData[2]),
        codeDcpBinder(id:3   , title: "includes(引数1 [, 引数2])" , argsDcp:   argsStringDetailData[ 3], codeDcp:dcpStringData[3], rtnValDcp:stringRtnValData[3]),
        //ここからnumArgsが未定
        codeDcpBinder(id:4   , title: "match(引数1)" , argsDcp:   argsStringDetailData[ 4], codeDcp:dcpStringData[4], rtnValDcp:stringRtnValData[4]),
        codeDcpBinder(id:5   , title: "padStart(引数1 [, 引数2])" , argsDcp:   argsStringDetailData[ 5], codeDcp:dcpStringData[5], rtnValDcp:stringRtnValData[5]),
        codeDcpBinder(id:6   , title: "padEnd(引数1 [, 引数2])" , argsDcp:   argsStringDetailData[ 6], codeDcp:dcpStringData[6], rtnValDcp:stringRtnValData[6]),
        codeDcpBinder(id:7   , title: "toLowerCase()" , argsDcp:   argsStringDetailData[ 7], codeDcp:dcpStringData[7], rtnValDcp:stringRtnValData[7]),
        codeDcpBinder(id:8   , title: "toUpperCase()" , argsDcp:   argsStringDetailData[ 8], codeDcp:dcpStringData[8], rtnValDcp:stringRtnValData[8]),
        codeDcpBinder(id:9   , title: "trim()" , argsDcp:   argsStringDetailData[ 9], codeDcp:dcpStringData[9], rtnValDcp:stringRtnValData[9]),
        codeDcpBinder(id:10   , title: "repeat(引数1, 引数2)" , argsDcp:   argsStringDetailData[10], codeDcp:dcpStringData[10], rtnValDcp:stringRtnValData[10]),
        codeDcpBinder(id:11   , title: "replace()" , argsDcp:   argsStringDetailData[11], codeDcp:dcpStringData[11], rtnValDcp:stringRtnValData[11]),
        codeDcpBinder(id:12   , title: "search()" , argsDcp:   argsStringDetailData[12], codeDcp:dcpStringData[12], rtnValDcp:stringRtnValData[12]),
        codeDcpBinder(id:13   , title: "slice(引数1 [, 引数2])" , argsDcp:   argsStringDetailData[13], codeDcp:dcpStringData[13], rtnValDcp:stringRtnValData[13]),
        codeDcpBinder(id:14   , title: "indexOf(引数1 [, 引数2])" , argsDcp:   argsStringDetailData[14], codeDcp:dcpStringData[14], rtnValDcp:stringRtnValData[14]),
        codeDcpBinder(id:15   , title: "lastIndexOf(引数1 [, 引数2])" , argsDcp:   argsStringDetailData[15], codeDcp:dcpStringData[15], rtnValDcp:stringRtnValData[15]),
        
        
    ]
















    







    //    コードの説明データ
    var dcpStringData:[String] = [
        // 0 startswith
        """
        文字列が特定の文字列で始まるかどうかを判断するときに用いるメソッド
        英文字の 大文字、小文字 は区別されます
        """,
        // 1 endswith
        """
        文字列が特定の文字列で終わるかどうかを判断するときに用いるメソッド
        英文字の 大文字、小文字 は区別されます
        """,
        
        // 2 length
        """
        文字列のに含まれる文字の個数を数える時に用いるメソッド
        """,
        
        // 3 includes
        """
        文字列に特定の文字列が含まれているかどうかを判断するときに用いるメソッド
        """,
        
        // 4 match
        """
            
        """,
        
        // 5 padStart
        """
        少し挙動がややこしいので細かく解説していきます
        例えば、st1の文字列の長さ6とst2の文字列の長さ3を足した9を引数にすると
        
        var st1 = "Orange";
        var st2 = "Pop";
        console.log(st1.padStart(9,st2));
        
        実行結果：PopOrange
        となり、st1の先頭にst2を延長したような文字列になります
        
        次に、先程の引数より少し多めの引数11を入れると
        console.log(st1.padStart(11,st2));
        
        実行結果：PopPoOrange
        となり、st1であるOrangeの先頭に文字列PopPoが延長されていることが分かります
        PopPo(Pop Po)はst2である文字列であるPopが繰り返し使われて延長されています
        このように、延長する文字列は引数の値によっては繰り返し延長されるという性質があります
        
        次に、st1の文字列よりやや少なめの引数5を入れると
        console.log(st1.padStart(5,st2));
        
        実行結果：Orange
        となり、引数5を入れたのにも関わらず、文字列の長さが6の出力結果が返ってきています
        これはpadStartの性質で、「延長後の文字列の長さの引数(引数1)」が「padStartを使用する文字列の長さ」より　少ない　場合、padEndによる延長は無視されてそのままの文字列が返ってきます
        
        """,
        
        // 6 padEnd
        """
        少し挙動がややこしいので細かく解説していきます
        例えば、st1の文字列の長さ5とst2の文字列の長さ5を足した10を引数にすると
        
        var st1 = "Grape";
        var st2 = "Juice"
        console.log(st1.padEnd(10,st2));
        
        実行結果：GrapeJuice
        となり、st１の後ろにst2を延長したような文字列になります
        
        次に、先程の引数より少し多めの引数13を入れると
        console.log(st1.padEnd(13,st2));
        
        実行結果：GrapeJuiceJui
        となり、st1であるGrapeの後ろに文字列JuiceJuiが延長されていることが分かります
        JuiceJui(Juice Jui)はst2である文字列であるJuiceが繰り返し使われて延長されています
        このように、延長する文字列は引数の値によっては繰り返し延長されるという性質があります
        
        次に、st1の文字列よりやや少なめの引数2を入れると
        console.log(st1.padEnd(2,st2));
        
        実行結果：Grape
        となり、引数5を入れたのにも関わらず、文字列の長さが5の出力結果が返ってきています
        これはpadEndの性質で、「延長後の文字列の長さの引数(引数1)」が「padEndを使用する文字列の長さ」より　短い　場合、padEndによる延長は無視されてそのままの文字列が返ってきます
        """,
        // 7 toLowerCase
        """
        文字列を全て小文字にしたい時に用いるメソッド
        メソッドを使用した文字列自身に変更は加えません(非破壊メソッド)
        """,
        // 8 toUpperCase
        """
        文字列を全て大文字にしたい時に用いるメソッド
        メソッドを使用した文字列自身に変更は加えません(非破壊メソッド)
        """,
        // 9 trim
        """
        文字列の両端の空白を除去したいときに用いるメソッド
        メソッドを使用した文字列自身に変更は加えません(非破壊メソッド)
        """,
        
        // 10 repeat
        """
        文字列を繰り返したい時に用いるメソッド
        """,
        
        // 11 replace
        """
        文字列の一部、または全てを他の文字列に置き換えたい時に用いるメソッド
        """,
        
        // 12 search
        """
        
        """,
        
        // 13 slice
        """
        文字列から文字列を抜き出したい時に用いるメソッド
        """,
        // 14 indexOf
        """
        文字列を先頭から検索するメソッド
        """,
        // 15 lastIndexOf
        """
        文字列を末尾から検索するメソッド
        """,
    ]










    //  引数の詳細データ
var argsStringDetailData:[[(title:String, argsDetailDcp:String)]] = [
        // 0 startsWith
        [
            (
                title: "引数１:(String) 検索する文字列",
                
                  argsDetailDcp: """
                このメソッドを使う文字列が「何」で始まるか　の「何」にあたる部分の文字列を入れます
                """
            ),

            (
                title: "引数２:(int)[省可] 先頭からの検索範囲",
                
                  argsDetailDcp: """
                このメソッドを用いる文字列の検索範囲を　文字列の先頭(intは1から)からのどこまで　適応するかの数値が入ります
                """
            )
        ],
        // 1 endsWith
        [
            (
                title: "引数１:(String) 検索する文字列",
                
                  argsDetailDcp: """
                このメソッドを使う文字列が「何」で終わるか　の「何」にあたる部分の文字列を入れます
                """
            ),

            (
                title: "引数２:(int)[省可] 先頭からの検索範囲",
                
                  argsDetailDcp: """
                このメソッドを用いる文字列の検索範囲を　文字列の先頭(intは1から)からのどこまで　適応するかの数値が入ります
                """
            )
        ],
        
        // 2 length
        [
            (
                title: "引数は無し",
                
                  argsDetailDcp: """
                この関数に引数はありません
                """
            )
            
        ],
        
        // 3 includes
        [
            (
                title: "引数１:(String) 検索される文字列",
                
                  argsDetailDcp: """
                このメソッドを使う文字列の中に 「何」が含まれているか の「何」にあたる部分の文字列を入れます
                """
            ),
            
            (
                title: "引数２:(int)[省可] 引数１を検索し始める位置を表す数値",
                
                  argsDetailDcp: """
                規定値は0です
                """
            )
        ],
        
        // 4 match
        [
            (
                title: "引数1:(正規表現) 正規表現が入ります" ,
                  argsDetailDcp: """
                    
                """
            )
        ],
        
        // 5 padStart
        [
            (
                title: "引数1:(int) 延長後の文字列の長さ" ,
                  argsDetailDcp: """
                このメソッドを用いて延長した後の文字列の長さ入れます
                長さの数値はインデックス番号のように0か始まらずに、普段文字を数えるように１から始まることに注意してください
                """
            ),
            
            (
                title: "引数２:(String)[省可] 延長する文字列" ,
                  argsDetailDcp: """
                文字列の先頭から延長したい文字列を入れます
                """
            )
        ],
        // 6 padEnd
        [
            (
                title: "引数1:(int) 延長後の文字列の長さ" ,
                  argsDetailDcp: """
                長さの数値はインデックス番号のように0か始まらずに、普段数字を数えるように１から始まることに注意してください
                """
            ),
            (
                title: "引数２:(String)[省可] 延長する文字列" ,
                  argsDetailDcp: """
                文字列の先頭から延長したい文字列を入れます
                """
            )
        ],
        // 7 toLowerCase
        [
            (
                title: "" ,
                  argsDetailDcp: """
                
                """
            )
        ],
        // 8 toUpperCase
        [
            (
                title: "" ,
                  argsDetailDcp: """
                
                """
            )
        ],
        // 9 trim
        [
            (
                title: "" ,
                  argsDetailDcp: """
                
                """
            )
        ],
        
        // 10 repeat
        [
            (
                title: "引数1:(Int) 文字列を繰り返す数" ,
                  argsDetailDcp: """
                文字列を繰り返す回数(0から正の無限大)を入れます
                """
            )
        ],
        
        // 11 replace
        [
            (
                title: "引数1:(正規表現　or　String) 置き換えたい文字列" ,
                  argsDetailDcp: """
                
                """
            ),
            (
                title: "引数2:()" ,
                  argsDetailDcp: """
                
                """
            )
        ],
        
        // 12 search
        [
            (
                title: "" ,
                  argsDetailDcp: """
                
                """
            )
        ],
        
        // 13 slice
        [
            (
                title: "引数1:(Int) 開始する位置" ,
                  argsDetailDcp: """
                抜き出しを開始する位置で0から初まるインデックス番号を入れます
                負の値の場合は文字列の後から数えて文字列を抜き出します
                例えば、st.slice(-3)の場合
                var st = 'abcdefgh';
                console.log(st.slice(-3));
                => fgh
                となります
                """
            ),
            (
                title: "引数２:(Int)[省可] 終了する位置",
                  argsDetailDcp:"""
                抜き出しを終了する位置で0から初まるインデックス番号を入れます
                """
            )
        ],
        
        // 14 indexOf
        [
            (
                title: "引数1:(String) 検索する文字列" ,
                  argsDetailDcp: """
                引数1になにも指定しない場合は暗黙的に'undefined'が渡されます
                """
            ),
            (
                title: "引数2:(Int) 検索を始める位置" ,
                  argsDetailDcp: """
                引数2の値が負の値の場合やメソッドを用いる文字列より長い値になる場合、0の位置から検索を開始します
                """
            )
        ],
        // 15 lastIndexOf
        [
            (
                title: "引数1:(String) 検索する文字列" ,
                  argsDetailDcp: """
                引数1になにも指定しない場合は暗黙的に'undefined'が渡されます
                """
            ),
            (
                title: "引数2:(Int) 検索を始める位置" ,
                  argsDetailDcp: """
                引数2の値が負の値の場合やメソッドを用いる文字列より長い値になる場合、0の位置から検索を開始します
                """
            )
        ],
    ]




   
