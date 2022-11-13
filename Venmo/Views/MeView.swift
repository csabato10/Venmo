//
//  MeView.swift
//  Venmo
//
//  Created by Chiara Sabato on 11/6/22.
//

import SwiftUI

struct MeView: View {
    @State var balance: Int = 140
    @State var showingSettingsView = false
    @State var showingTransferBalance = false
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Spacer()
                    Image(systemName: "bell.fill")
                        .foregroundColor(Color.gray)
                    Button {
                        showingSettingsView.toggle()
                    } label: {
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .foregroundColor(Color.gray)
                            .frame(width: 20, height: 20)
                    }
                    .padding(.trailing)
                }
                HStack{
                    Image("ramses")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 135, height: 135)
                        .padding()
                    VStack{
                        Text("Ramses the Ram")
                            .bold()
                            .frame(alignment: .leading)
                            .font(.system(size: 20))
                        Text("@theOGgoat")
                            .padding(.trailing)
                    }
                    Spacer()
                }
                HStack{
                    VStack{
                        Text("$")
                            .padding(.bottom)
                    }
                    Text("\(balance)")
                        .font(.system(size: 60))
                }
                HStack{
                    Text("Venmo balance")
                        .font(.system(size: 12))
                }
                HStack{
                    Button {
                        showingTransferBalance.toggle()
                    } label: {
                        Text("Transfer Balance")
                            .frame(width: 300)
                    }
                    
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .clipShape(Capsule())
                    
                }
                Spacer()
                ScrollView{
                    TransferView(senderImage: "ramses", sender: "You", receiver: "Roy Williams", message: "Basketball Jersey")
                    TransferView(senderImage: "roy", sender: "Rou Williams", receiver: "You", message: "Season Tickets")
                    TransferView(senderImage: "dook", sender: "Dook", receiver: "You", message: "I'm secretly jealous of you.")
                    TransferView(senderImage: "mr. wuff", sender: "Mr. Wuff", receiver: "You", message: "I would leave Mrs. Wuff for you.")
                }
                .padding(.top)
            }
            .sheet(isPresented: $showingSettingsView) {
                Settings_View()
            }
            .sheet(isPresented: $showingTransferBalance) {
                TransferBalance(balance: $balance)
            }
            
        }
    }
}


struct TransferBalance: View{
    @Binding var balance: Int
    @State var withdrawn: Int = 0
    @Environment(\.dismiss) var dismiss
    @State var selectedInstant: Bool = true
    @State var selectedBusinessDays: Bool = false
    
    var body: some View{
        VStack{
            Spacer()
            HStack{
                Spacer(minLength: 110)
                TextField("Amount", value: $withdrawn, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                    .font(.system(size: 60))
                Spacer()
            }
            HStack{
                Text("Transfer up to $\(balance).00")
            }
            HStack{
                VStack{
                    Button{
                        selectedInstant.toggle()
                        selectedBusinessDays.toggle()
                    }
                label: {Text("Instant")
                        .foregroundColor(Color.white)
                        .ignoresSafeArea()
                        .frame(width: 150, height: 150)
                        .background(selectedInstant ? Color.blue : Color.gray)
                        .lineSpacing(50)
                        .multilineTextAlignment(.leading)
                }
                }
                VStack{
                    Button{
                        selectedInstant.toggle()
                        selectedBusinessDays.toggle()
                    }
                label: {
                    Text("1-3 Business Days")
                        .foregroundColor(Color.white)
                        .ignoresSafeArea()
                        .frame(width: 150, height: 150)
                        .background(selectedBusinessDays ? Color.blue : Color.gray)
                        .lineSpacing(50)
                        .multilineTextAlignment(.leading)
                }
                }
            }
            Spacer()
            Button() {
                balance -= withdrawn
                dismiss()
            } label: {
                Text("Transfer \(withdrawn)")
                    .frame(width: 200)
            }
            .padding()
            .frame(width: 300)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.blue))
        }
    }
}

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
