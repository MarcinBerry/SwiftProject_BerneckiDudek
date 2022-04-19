//
//  ContentView.swift
//  SwiftProject_BerneckiDudek
//
//  Created by Marcin on 18/04/2022.
//

import SwiftUI


struct ContentView: View {
    @State private var cars = [
        Car(Nazwa: "Audi A3", Pojemnosc:"1996cm3", nadwozie: "Hatchback", dataprodukcji: "1999", img: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ebayimg.com%2Fimages%2Fi%2F351965820080-0-1%2Fs-l1000.jpg&f=1&nofb=1"),
        Car(Nazwa: "BMW E46", Pojemnosc:"1215cm3", nadwozie: "Coupe", dataprodukcji: "2001"),
        Car(Nazwa: "Opel Astra", Pojemnosc:"2624cm3", nadwozie: "Sedan", dataprodukcji: "2004"),
        Car(Nazwa: "Mercedes C63 AMG", Pojemnosc:"6134cm3", nadwozie: "SUV", dataprodukcji: "2006"),
        Car(Nazwa: "Toyota Corolla", Pojemnosc:"4123cm3", nadwozie: "Hatchback", dataprodukcji: "2010")
    ]
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
            .navigationBarItems(trailing: NavigationLink(destination: CarsView(cars: cars, onAdd: { item in
                self.cars.append(item)
            }), label: {
                Text("Oferta").frame(width: 60, height: 50)
            }))
        }
    }
}



