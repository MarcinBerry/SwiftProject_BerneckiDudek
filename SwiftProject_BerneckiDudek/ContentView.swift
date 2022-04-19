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
                Spacer()
                Text("Komis samochodowy Kacpero i Marcino")
                Text("ul. Kaczadafiego 96,")
                Text("21-010 Warszawa")
                Spacer()
            }
            .navigationTitle("Kacpero&Marcino")
            .navigationBarItems(trailing: NavigationLink(destination: CarsView(), label: {
                Text("Oferta").frame(width: 60, height: 50)
            }))
        }
    }
}



