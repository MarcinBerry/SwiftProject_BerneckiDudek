//
//  ContentView.swift
//  SwiftProject_BerneckiDudek
//
//  Created by Marcin on 18/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
           NavigationView{
            VStack{
                HStack{
                Rectangle().fill(Color.red).frame(width: 40, height: 40)
                Spacer()
                NavigationLink(destination: SubPage(img: "BMW",marka: "BMW", pojemonsc: "3.0", typ: "sedan", rokProdukcji: "2007"), label: {
                    Text("Oferta").frame(width: 60, height: 50)
                })
                }
                VStack(alignment: .center){
                    NavigationLink(destination: SubPage(img: "BMW",marka: "BMW", pojemonsc: "3.0", typ: "sedan", rokProdukcji: "2007"), label: {
                        Text("BMW").frame(width: 375, height: 50).background(Color.gray)
                    })
                    NavigationLink(destination: SubPage(marka: "Audi", pojemonsc: "2.0", typ: "kombi", rokProdukcji: "2010"), label: {
                        Text("Audi").frame(width: 375, height: 50).background(Color.green)
                    })
                    NavigationLink(destination: SubPage(marka: "Mercedes", pojemonsc: "1.0", typ: "cabrio", rokProdukcji: "2004"), label: {
                        Text("Mercedes").frame(width: 375, height: 50).background(Color.yellow)
                    })
                    Spacer()
                }
            }.padding(10)
        }
        }
}

struct SubPage: View {
    var img: String?
    var marka: String
    var pojemonsc: String
    var typ: String
    var rokProdukcji: String
    var body: some View {
            VStack {
                (img != nil) ? Image(img!).resizable()
                .aspectRatio(contentMode: .fit) : nil
                Text("Marka: \(marka)")
                Text("Pojemnosc: \(pojemonsc)")
                Text("Typ: \(typ)")
                Text("Rok produkcji: \(rokProdukcji)")
            }
    }
}
	
