//
//  CatalogPage.swift
//  SwiftProject_BerneckiDudek
//
//  Created by Marcin on 18/04/2022.
//

import Foundation
import SwiftUI

struct Car: Hashable{
    var Nazwa: String
    var Pojemnosc: String
    var nadwozie: String
    var dataprodukcji: String
}
struct CarsView: View {
    @State private var cars = [
        Car(Nazwa: "Audi A3", Pojemnosc:"1996cm3", nadwozie: "Hatchback", dataprodukcji: "1999"),
        Car(Nazwa: "BMW E46", Pojemnosc:"1215cm3", nadwozie: "Coupe", dataprodukcji: "2001"),
        Car(Nazwa: "Opel Astra", Pojemnosc:"2624cm3", nadwozie: "Sedan", dataprodukcji: "2004"),
        Car(Nazwa: "Mercedes C63 AMG", Pojemnosc:"6134cm3", nadwozie: "SUV", dataprodukcji: "2006"),
        Car(Nazwa: "Toyota Corolla", Pojemnosc:"4123cm3", nadwozie: "Hatchback", dataprodukcji: "2010")
    ]
    
    //@State private var text: String = ""
    @State var addCar = false
    @State var addCarName: String = ""
    @State var addCarPojemnosc: String = ""
    @State var addCarNadwozie: String = ""
    @State var addCarRocznik: String = ""
    var body: some View {
        List {
            ForEach(cars, id: \.self) { Car in
                HStack {
                Text(Car.Nazwa)
                NavigationLink(destination: SubPage(marka: Car.Nazwa, pojemonsc: Car.Pojemnosc, typ: Car.nadwozie, rokProdukcji: Car.dataprodukcji), label: {
                    Spacer()
                    Text("Wiecej").background(Color.blue).foregroundColor(Color.white).font(.system(size:12.0))
                })
                }
            }
            .onDelete(perform: delete)
        }
        .navigationTitle("Oferta komisu")
        .navigationBarItems(trailing: Button("Dodaj", action : {

            self.addCar.toggle()
        })).sheet(isPresented: $addCar) {
            VStack {
                Text("Dodaj auto")
                TextField("Podaj marke auta:", text: self.$addCarName).textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Podaj pojemnosc auta:", text: self.$addCarPojemnosc).textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Podaj nadwozie auta:", text: self.$addCarNadwozie).textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Podaj rocznik auta:", text: self.$addCarRocznik).textFieldStyle(RoundedBorderTextFieldStyle())
                HStack {
                Button("DODAJ", action: {
                    if(self.addCarName.isEmpty || self.addCarPojemnosc.isEmpty || self.addCarNadwozie.isEmpty || self.addCarRocznik.isEmpty) {
                        return
                    }
                    self.cars.append(Car(Nazwa: addCarName, Pojemnosc: addCarPojemnosc, nadwozie: addCarNadwozie, dataprodukcji: addCarRocznik))
                    
                    self.addCar.toggle()
                    
                    self.addCarName = ""
                    self.addCarRocznik = ""
                    self.addCarNadwozie = ""
                    self.addCarPojemnosc = ""
                })
                    Spacer()
                Button("ANULUJ", action: {
                    self.addCar = false
                    
                    self.addCarName = ""
                    self.addCarRocznik = ""
                    self.addCarNadwozie = ""
                    self.addCarPojemnosc = ""
                })
                }
            }.padding()
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
    }
    }
    func delete(at offsets: IndexSet) {
        cars.remove(atOffsets: offsets)
    }
    
}


