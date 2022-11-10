//
//  CardsView.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/6/22.
//

import SwiftUI

struct CardsView: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Take Venmo everywhere")
                    .font(.title2)
                    .padding(.top)
                    .padding(.bottom)
                HStack{
                    Text("Venmo Credit Card")
                        .clipShape(RoundedRectangle(cornerRadius: 100))
                        .frame(width: 300, height: 200)
                        .background(Color("cardColor"))
                        .lineSpacing(50)
                        .multilineTextAlignment(.leading)
                }
                HStack{
                    Text("Venmo Debit Card")
                        
                        .clipShape(RoundedRectangle(cornerRadius: 100))
                        .frame(width: 300, height: 200)
                        .background(Color("debitColor"))
                        .lineSpacing(50)
                        .multilineTextAlignment(.leading)
                    
                }
                Spacer()
            }
            
        }
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
