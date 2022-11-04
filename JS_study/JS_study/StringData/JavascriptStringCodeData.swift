//
//  JavascriptCodeData.swift
//  JS_study
//
//  Created by macbooka on 2021/03/21.
//

import Foundation

var stringCodeData:[String] = [
//   0 startsWith
    """
        var st = 'toro';
        console.log(st.endsWith('ro'));
        // => true
        console.log(st.endsWith('to', 2));
        // => true
        console.log(st.endsWith('to', 3));
        // => false
    """,
//   1 endsWith
    """
        var st = 'toro';
        console.log(st.endsWith('ro'));
        // => true
        console.log(st.endsWith('to', 2));
        // => true
        console.log(st.endsWith('to', 3));
        // => false
    """,
//   2 length
    """
        var st = 'hello!'
        console.log(st.length);
        // => 6
    """,
//   3 includes
    """
        var st = 'tabesi';
        console.log(st.includes('bes'));
        // => true
        console.log(st.includes('ab',1));
        // => true
        console.log(st.includes('ab',2));
        // => false
    """,
//   4 match
    """
        var st = 'HOW ARE you?';
        var regexp = /[a-z]/;
        console.log(st.match(regexp));
        /*

            [
                'y',
                index: 8,
                input: 'HOW ARE you?',
                groups: undefined
            ]
        */
    """,
//   5 padStart
    """
        var st = 'Zero';
        console.log(st.padStart(2,'Strong'));
        // => Zero
        console.log(st.padStart(6,'Strong'));
        // => STZero
        console.log(st.padStart(10,'Strong'));
        // => StrongZero
        console.log(st.padStart(13,'Strong'));
        // => StrongStrZero
        console.log(st.padEnd(10, 'Strong'));
        //  => ZeroStrong
    """,
//   6 padEnd
    """
        var st = 'Zero';
        console.log(st.padStart(2,'Strong'));
        // => Zero
        console.log(st.padStart(6,'Strong'));
        // => STZero
        console.log(st.padStart(10,'Strong'));
        // => StrongZero
        console.log(st.padStart(13,'Strong'));
        // => StrongStrZero
        console.log(st.padEnd(10, 'Strong'));
        //  => ZeroStrong
    """,
//   7 toLowerCase
    """
        var st1 = 'java';
        var st2 = 'SWIFT';
        console.log(st1.toUpperCase());
        // => JAVA
        console.log(st2.toLowerCase());
        // => swift
    """,
//   8 toUpperCase
    """
        var st1 = 'java';
        var st2 = 'SWIFT';
        console.log(st1.toUpperCase());
        // => JAVA
        console.log(st2.toLowerCase());
        // => swift
    """,
//   9 trim
    """
        var st = '  jhon    '
        console.log(st.trim());
        // => 'jhon'
    """,
//   10 repeat
    """
        var st = 'ro';
        console.log(st.repeat(3));
        // => rororo
        console.log(st.repeat(1));
        // => ro
    """,
//   11 replace
    """
        var st2 = 'taiyouyou';
        console.log(st2.replace('you', 'huu'));
        // => taihuu
        // 正規表現を用いたreplaceもある
    """,
//   12 search
    """
        //        0123456778
        var st = 'DddSAasssf'
        var regexp = /sss/
        console.log(st.search(regexp));
        //  => 6
    """,
//   13 slice
    """
        var st = 'Hello_javascript'
        console.log(st.slice(6));
        // => javascript
        console.log(st.slice(6, 10));
        // => java
    """,
//   14 indexOf
    """
        var st = 'towntown';
        console.log(st.indexOf('ow'));
        // => 1
        console.log(st.indexOf('metro'));
        // => -1 (indexOfの引数がマッチしなかった場合-1を返す)
        console.log(st.lastIndexOf('ow'));
        // => 5
    """,
//   15 lastIndexOf
    """
        var st = 'towntown';
        console.log(st.indexOf('ow'));
        // => 1
        console.log(st.indexOf('metro'));
        // => -1 (indexOfの引数がマッチしなかった場合-1を返す)
        console.log(st.lastIndexOf('ow'));
        // => 5
    """
]
