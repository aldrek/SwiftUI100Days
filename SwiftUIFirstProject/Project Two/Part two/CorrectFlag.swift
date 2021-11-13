//
//  CorrectFlag.swift
//  SwiftUIFirstProject
//
//  Created by Macbookbro on 11/11/21.
//

import SwiftUI

struct CorrectFlag: View {

    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    @State private var correctAnswer = Int.random(in: 0...2)

    @State private var scoreTitle = ""
    @State private var showingScore:Bool = false
    @State private var scoreValue:Int = 0

    var body: some View {

        ZStack{
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            VStack{

                Spacer()
                Spacer()

                Text("Guess the flag").foregroundColor(Color.white)       .foregroundStyle(.secondary)
                    .font(.title.bold())

                Spacer()

                VStack(spacing : 20){

                    VStack{
                        Text("Tap the correct flag").foregroundColor(Color.white)       .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))  .font(.largeTitle.weight(.semibold))
                        Text(countries[correctAnswer]).foregroundColor(Color.white)
                    }

                    ForEach(0..<3){ number in
                        Button {
                            flagTapped(number)
                        }label: {
                            Image(countries[number]).renderingMode(.original).clipShape(Capsule()).shadow(radius: 5)
                        }
                    }

                }
                .frame(maxWidth : .infinity)
                .padding(.vertical ,  20 )
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))

                Spacer()

                Text("Your score is \(scoreValue)").foregroundColor(.white).font(.title.bold())

                Spacer()

            }

        }

        .alert(scoreTitle , isPresented: $showingScore){
            Button( "Continue",action: askQuestion )
        } message: {
            Text("Your score is \(scoreValue)")
        }

    }

    func flagTapped(_ number: Int){
        if(number == correctAnswer){
            scoreTitle = "Correct"
            scoreValue = scoreValue + 1
        }else{
            scoreTitle = "False"
        }
        showingScore = true
    }

    func askQuestion(){

        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct CorrectFlag_Previews: PreviewProvider {
    static var previews: some View {
        CorrectFlag()
    }
}
