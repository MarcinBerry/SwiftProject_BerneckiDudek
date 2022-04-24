//
//  ContentView.swift
//  SwiftProject_BerneckiDudek
//
//  Created by Marcin on 18/04/2022.
//

import SwiftUI


struct ContentView: View {
    @State private var cars = [
        Car(img: "audi", Nazwa: "Audi A3", Pojemnosc:"2000", nadwozie: "Hatchback", dataprodukcji: "1999"),
        Car(img: "bmw",Nazwa: "BMW E46", Pojemnosc:"2500", nadwozie: "Coupe", dataprodukcji: "2001"),
        Car(img: "opel",Nazwa: "Opel Astra", Pojemnosc:"1600", nadwozie: "Sedan", dataprodukcji: "2004"),
        Car(img: "mercedes", Nazwa: "Mercedes C63 AMG", Pojemnosc:"6300", nadwozie: "Coupe", dataprodukcji: "2016"),
        Car(img: "toyota",Nazwa: "Toyota Corolla", Pojemnosc:"1800", nadwozie: "Hatchback", dataprodukcji: "2010")
    ]
    var body: some View {
        NavigationView{
            VStack(alignment: .center) {
                Spacer()
                Image("logodealer")
                Text("Komis samochodowy Kacpero&Marcino")
                Text("ul. Kaczadafiego 96,")
                Text("21-010 Warszawa")
                Spacer()
            }

            .navigationTitle("K&M")
            .navigationTitle("Kacpero&Marcino")
            .navigationBarItems(trailing: NavigationLink(destination: CarsView(cars: cars, onAdd: { item in
                self.cars.append(item)
            }), label: {
                Text("Oferta").frame(width: 60, height: 50)
            }))
            .background(Image("backphoto"))
            .foregroundColor(Color.white)
        }
    }
}


