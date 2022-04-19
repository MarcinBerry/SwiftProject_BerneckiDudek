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
            VStack(alignment: .center) {
                NavComponent()
                Spacer()
                Text("Komis samochodowy Kacpero i Marcino")
                Text("ul. Kaczadafiego 96,")
                Text("21-010 Warszawa")
                Spacer()
            }
            
            //                VStack(alignment: .center){
            //                    NavigationLink(destination: SubPage(img: "BMW",marka: "BMW", pojemonsc: "3.0", typ: "sedan", rokProdukcji: "2007"), label: {
            //                        Text("BMW").frame(width: 375, height: 50).background(Color.gray)
            //                    })
            //                    NavigationLink(destination: SubPage(marka: "Audi", pojemonsc: "2.0", typ: "kombi", rokProdukcji: "2010"), label: {
            //                        Text("Audi").frame(width: 375, height: 50).background(Color.green)
            //                    })
            //                    NavigationLink(destination: SubPage(marka: "Mercedes", pojemonsc: "1.0", typ: "cabrio", rokProdukcji: "2004"), label: {
            //                        Text("Mercedes").frame(width: 375, height: 50).background(Color.yellow)
            //                    })
            //                    Spacer()
            //                }
        }
        
        
    }
}



