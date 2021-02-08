//
//  ContentView.swift
//  christmas-countdown
//
//  Created by Rick Brown on 08/02/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack {
      VStack {
        Spacer()
        
        RoundedRectangle(cornerRadius: 0)
          .foregroundColor(.white)
          .frame(height: 100)
          .lineLimit(1)
    
      }
      
      VStack {
        Text("\(getNumberOfDaysUntilChristmas())")
          .minimumScaleFactor(0.5)
          .font(.custom("Kingthings Christmas 2", size: 250))
          .foregroundColor(.white)
          .padding(.vertical, -30)
        
        Text("Days until Christmas")
          .font(.custom("Kingthings Christmas 2", size: 40))
          .foregroundColor(.white)
      }
      .padding(.bottom, 100)
      
      VStack {
        HStack {
          Spacer()
          
          Image("moon")
            .resizable()
            .scaledToFit()
            .frame(height: 100)
            .rotationEffect(.degrees(30))
            .padding(.top, 60)
            .padding(.trailing, 40)
        }
        
        Spacer()
        
        HStack {
          Image("tree")
            .resizable()
            .scaledToFit()
            .frame(height: 350)
            .rotationEffect(.degrees(-5))
            .padding(.bottom, 10)
            .padding(.leading, -40)
          
          Spacer()
          
          Image("snowman")
            .resizable()
            .scaledToFit()
            .frame(height: 200)
            .rotationEffect(.degrees(5))
            .padding(.top, 100)
        }
      }
    }
    .background(Color.init(red: 0 / 255.0, green: 14 / 255.0, blue: 51 / 255.0))
    .edgesIgnoringSafeArea(.all)
  }
  
  func getNumberOfDaysUntilChristmas() -> Int {
    let christmasDateComponents = DateComponents(month: 12, day: 25, hour: 23, minute: 59, second: 59)
    let currentDate = Date()
    if let nextChristmasDate = Calendar.current.nextDate(after: currentDate, matching: christmasDateComponents, matchingPolicy: .strict),
       let daysUntilNextChristmasDay = Calendar.current.dateComponents([.day], from: currentDate, to: nextChristmasDate).day {
      return daysUntilNextChristmasDay
    }
    return 0
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
