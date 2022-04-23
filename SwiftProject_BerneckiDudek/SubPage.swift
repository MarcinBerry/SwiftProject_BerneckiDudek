//
//  SubPage.swift
//  SwiftProject_BerneckiDudek
//
//  Created by Marcin on 18/04/2022.
//

import Foundation
import SwiftUI

struct SubPage: View {
    var img: String?
    var marka: String
    var pojemonsc: String
    var typ: String
    var rokProdukcji: String
    var body: some View {
            VStack {
                Image(img!)
//                (img != nil) ? Image(img!).resizable()
//                .aspectRatio(contentMode: .fit) : nil
                Text("Marka: \(marka)")
                Text("Pojemnosc: \(pojemonsc) [cm3]")
                Text("Typ: \(typ)")
                Text("Rok produkcji: \(rokProdukcji)")
            }
    }
}
