//
//  ContentView.swift
//  RGBviewSwiftUI
//
//  Created by Armen on 23.07.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: Double = 0
    @State private var greenValue: Double = 0
    @State private var blueValue: Double = 0
    
    @State private var redValueTF = ""
    @State private var blueValueTF = ""
    @State private var greenValueTF = ""

    
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(height: 200)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.white, lineWidth: 5)
                )
                .foregroundColor(Color(red: redValue/255, green: greenValue/255, blue: blueValue/255))
            HStack {
                Text("\(Int(redValue))").frame(width: 33)
                    .foregroundColor(Color.white)
                Slider(value: $redValue, in: 0...255, step: 1)
                    .accentColor(.red)
                TextField("\(Int(redValue))", text: Binding(
                    get: { "\(Int(self.redValue))" },
                    set: { if let value = Double($0) { self.redValue = value } }
                ))
                                .keyboardType(.numberPad)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 50)
            }
            HStack {
                Text("\(Int(greenValue))").frame(width: 33)
                    .foregroundColor(Color.white)
                Slider(value: $greenValue, in: 0...255, step: 1)
                    .accentColor(.green)
                TextField("\(Int(greenValue))", text: Binding(
                    get: { "\(Int(self.greenValue))" },
                    set: { if let value = Double($0) { self.greenValue = value } }
                ))
                                .keyboardType(.numberPad)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 50)
            }
            HStack {
                Text("\(Int(blueValue))").frame(width: 33)
                    .foregroundColor(Color.white)
                Slider(value: $blueValue, in: 0...255, step: 1)
                    .accentColor(.blue)
                TextField("\(Int(blueValue))", text: Binding(
                    get: { "\(Int(self.blueValue))" },
                    set: { if let value = Double($0) { self.blueValue = value } }
                ))
                                .keyboardType(.numberPad)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 50)
            }
            Spacer()
        }
        .padding()
        .background(Color(red: 0, green: 0.5, blue: 0.5))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
