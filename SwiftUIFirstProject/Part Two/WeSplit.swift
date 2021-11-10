//
//  WeSplit.swift
//  SwiftUIFirstProject
//
//  Created by Macbookbro on 11/10/21.
//

import SwiftUI

struct WeSplit: View {

    @State private var checkAmount = 0.0
    @State private var nuOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool

    let tipPercentages = [ 10 , 15 , 20 , 0]

    var totalPerPerson: Double {
        let peopleCount = Double(nuOfPeople + 2)
        let tipSelection = Double(tipPercentage)

        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }

    var body: some View {

        NavigationView{

            Form{
                Section{

                    TextField("Amount" , value: $checkAmount , format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)

                    Picker("Number of people", selection: $nuOfPeople ){
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }

                }

                Section {
                    Picker("Tip percentage" , selection: $tipPercentage){
                        ForEach(tipPercentages , id : \.self){
                            Text( $0 , format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip you want to pay ?")
                }


                Section{

                    Text(totalPerPerson , format : .currency(code: Locale.current.currencyCode ?? "USD"))

                }



            }
            .navigationTitle("WeSplit")
            .toolbar{

                ToolbarItemGroup ( placement: .keyboard ){
                    Spacer()
                    Button("Done"){
                        amountIsFocused = false
                    }
                }

            }
        }

    }
}

struct WeSplit_Previews: PreviewProvider {
    static var previews: some View {
        WeSplit()
            .previewDevice("iPhone 11")
    }
}