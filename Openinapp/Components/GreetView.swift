//
//  GreetView.swift
//  OpeninApp
//
//  Created by Niranjan Panigrahi on 23/05/24.
//

import SwiftUI

struct GreetView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(greetBasedOnTime())
                    .font(.system(size: 16, weight: .thin))
                Text("Niranjan Panigrahi 👋")
                    .font(.system(size: 24, weight: .semibold))
                
            }
            Spacer()
        }
        .frame(width: 360, height: 100)
    }
    
    
    func greetBasedOnTime() -> String {
      let now = Date()
      let calendar = Calendar.current

      let hour = calendar.component(.hour, from: now)

      switch hour {
      case 5..<12:
        return "Good Morning"
      case 12..<17:
        return "Good Afternoon"
      case 17..<21:
        return "Good Evening"
      default:
        return "Hello!"
      }
    }
}
