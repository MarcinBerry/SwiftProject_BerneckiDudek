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
    var img: String?
}
struct CarsView: View {
    @State var cars: [Car] = []
    var onAdd: (Car) -> Void
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
                    self.onAdd(Car(Nazwa: addCarName, Pojemnosc: addCarPojemnosc, nadwozie: addCarNadwozie, dataprodukcji: addCarRocznik))
                    
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


