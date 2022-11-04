//
//  ContentView.swift
//  JS_study
//
//  Created by macbooka on 2021/03/21.
//

import SwiftUI
import MobileCoreServices
import WebKit



struct ContentView: View {
    @State var selectedTag = 1
    var body: some View {
        
        VStack{
            TabView(selection: $selectedTag) {
                MenuView()
                    .tabItem {
                        Image(systemName: "menubar.arrow.up.rectangle")
                        Text("Menu")
                    }.tag(1)
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }.tag(2)
                
                OptionView()
                    .tabItem {
                        Image(systemName: "wrench.and.screwdriver")
                        Text("Option")
                    }.tag(3)
            }
        }
                
    }
}





struct HomeView: View {
    init() {
        UITableView.appearance().backgroundColor = UIColor(named: "cooloshBlue")
        
    }
    var body: some View {
       
               
        NavigationView {
                    List {
                        
                        NavigationLink(destination: ListView(codeDataNum:0)){//0 String
                                Image(systemName: "pencil")
                                Text("String関係")
                                 
                            }
                            .listRowBackground(Color("cooloshBlue"))
                            .padding()
                            .foregroundColor(Color.blue)
                            .background(
                                Capsule()
                                    .fill(Color("armyBlue"))
                                    .shadow(color: Color.black, radius: 3, x: 3, y: 3))
                            
                            
                        
                        NavigationLink(destination: ListView(codeDataNum:1)){//1 Array
                                Image(systemName: "text.alignright")
                                Text("Array関係")
                            }
                            .listRowBackground(Color("cooloshBlue"))
                            .foregroundColor(Color.blue)
                            .padding()
                            .background(
                                Capsule()
                                    .fill(Color("armyBlue"))
                                    .shadow(color: Color.black, radius: 3, x: 3, y: 3)
                            )
                    }
        }
    }
}





struct OptionView: View {
    var body: some View {
        ZStack{
            Color.green
            Text("設定")
        }
        
    }
}





struct MenuView: View {
    @State var isModal: Bool = false
    var body: some View {
        
        VStack{
            
            Button(action: {isModal = true}) {
                Text("モーダルビュー")
            }
            .sheet(isPresented: $isModal) {
                MenuView()
            }
            Text("メニュー")
        }
        
    }
}





struct ListView: View {
    

    
    
   
    var codeDataNum:Int
    var body: some View {
            List(){
                ForEach(0 ..< codeDataSorce[codeDataNum].codeDcpData.count){ codeId in
                    NavigationLink(destination: ListDetailView(codeDataNum:codeDataNum ,item: codeDataSorce[codeDataNum].imageData[codeId])) {
                        Text(codeDataSorce[codeDataNum].codeDcpData[codeId].title)
                            .fontWeight(.heavy)
                            .listRowBackground(Color.blue)
                            .padding()
                    }
                    .listRowBackground(Color("cooloshBlue"))
                }
            }
    }
}








struct ListDetailView: View {
    var codeDataNum:Int
    var item:Data
    @State var isWebView:Bool = false
    @State var isCopied:Bool = false
    var body: some View {
        ZStack{
            Color("cooloshBlue")
                .edgesIgnoringSafeArea(.all)
            NavigationLink(destination: questionView(codeDataNum:codeDataNum, item: item)) {
                Image(systemName: "questionmark.circle")
                                    .position(x:360, y:30)
                                    .font(.system(size: 60, weight: .bold, design: .default))
                                    .foregroundColor(.black)
            }
            
            VStack{
                
                Text(item.title)
                    .font(.largeTitle)
                    .fontWeight(.black)
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(7)
                    .padding()
                //以下はまだStringのみしか機能していない
                //
                //
                //
                //
                Button(action: {
                    UIPasteboard.general.string = codeDataSorce[codeDataNum].copyCodeData[item.codeId]
                    isCopied = true
                    }, label: {
                        HStack{
                            isCopied ? (Image(systemName: "square.and.arrow.down").foregroundColor(Color.orange)):(Image(systemName: "square.and.arrow.down").foregroundColor(Color.blue))
                            isCopied ? (Text("コピー済み").foregroundColor(.orange)):(Text("コードをコピー"))
                            
                        }
                            .padding()
                            .font(.largeTitle)
                            .background(
                                Capsule()
                                    .fill(Color("armyBlue"))
                                    .shadow(color: Color.black, radius: 3, x: 3, y: 3))
                       
                    }
                )
                HStack {
                    Button(action:{
                        isWebView = true
                    }){
                        HStack{
                                Image(systemName: "chevron.left.slash.chevron.right")
                                Text("コードを試す！")
                            }
                                .font(.largeTitle)
                                .padding()
                                .background(
                                    Capsule()
                                        .fill(Color("armyBlue"))
                                        .shadow(color: Color.black, radius: 3, x: 3, y: 3)
                                )
                        
                    }.sheet(isPresented: $isWebView){
                        TestJS_WindowView()
                    }
                }
            }
        }
    }
}


struct questionView: View {
    //    ここの部分はイニシャライザ？
    var codeDataNum:Int
    var item:Data

    var body: some View {
        
        
        let codeDcpData = codeDataSorce[codeDataNum].codeDcpData[item.codeId]
        let rtnValData = codeDataSorce[codeDataNum].rtnValData[item.codeId]
        
            
        ZStack{
            Color("cooloshBlue").ignoresSafeArea()
            ScrollView(.vertical){
                VStack {
                    
                    Text(codeDcpData.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    ForEach(0..<codeDcpData.argsDcp.count){ i in
                        Text(codeDcpData.argsDcp[i].title).font(.system(size: 16, weight: .bold, design: .default))
                        Text(codeDcpData.argsDcp[i].argsDetailDcp)
                                                    .frame(width: 320, height: 150, alignment: .leading)
                    }
                    
                    Text("戻り値")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    Text(rtnValData.title)
                        .frame(width: 320, height: .infinity, alignment: .leading)
                    Text(rtnValData.descri)
                        .frame(width: 320, height: .infinity, alignment: .leading)
                    Text("")
                    
                    Text("この関数の説明")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    Text(codeDcpData.codeDcp)
                        .frame(width: 320, height: .infinity, alignment: .leading)
                   
                }.frame(width: .infinity, height: .infinity, alignment: .center)
 
            }
        }
    }
}



struct TestJS_WindowView: View {
    var body: some View {
        ZStack{
            Color("armyBlue")
            VStack{
                Image(systemName: "chevron.down")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.blue)
                WebView()
            }
        }
    }
}



struct WebView: UIViewRepresentable {
    var url: String = "https://jsbin.com/?js" //表示するWEBページのURLを指定
    
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.load(URLRequest(url: URL(string: url)!))
    }
}




struct StringList_Previews: PreviewProvider {
    static var previews: some View {
       
        ContentView()
        
    }
}
