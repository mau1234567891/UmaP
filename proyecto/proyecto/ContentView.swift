//
//  ContentView.swift
//  proyecto
//
//  Created by Mauricio Alexander Contreras Escobar on 5/15/24.
//  Copyright © 2024 Mauricio Alexander Contreras Escobar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false
    @State private var isLoggedIn2: Bool = false
@State private var isLoggedIn3: Bool = false
    var body: some View {
         NavigationView {
                  VStack {
                    Text("Login")
                    Image("logo")
                    .resizable()
                    .frame(width: 200, height:200)
                Rectangle()
                    .frame(width: 310, height: 400)
                    .foregroundColor(.blue)
                    .cornerRadius(75)
                    .overlay(
                        VStack {
                        TextField("Usuario", text: $username)
        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 300, height: 40)
            .foregroundColor(.black)
                            TextField("Contraseña", text: $password)
.textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 300, height: 40)
                                .foregroundColor(.black)
    Button(action: {
    if self.username == "Mau" && self.password == "12345" {
            self.isLoggedIn = true
        
            } else {
    let alert = UIAlertController(title: "Error", message: "Usuario o contraseña incorrectos", preferredStyle: .alert)
alert.addAction(UIAlertAction(title: "OK", style: .default))
UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true)
        }
  }){Text("Acceder")
            .foregroundColor(.white)
        .frame(width:300, height: 40)
    .background(Color.gray)
            .cornerRadius(10)
    }
        NavigationLink(
        destination: Menu(),
        isActive: self.$isLoggedIn,
        label: {
        EmptyView()
        })
        Button(action: {
            self.isLoggedIn2 = true         }){Text("Crear cuenta")
                   .foregroundColor(.white)
            .frame(width: 300, height:40)
           .background(Color.gray)
            .padding()
                   .cornerRadius(10)
                            }
               NavigationLink(
               destination: CrearCuenta(),
               isActive: self.$isLoggedIn2,
               label: {
               EmptyView()
               })
                
            Button(action: {
                self.isLoggedIn3 = true            }){Text("Has olvidado tu contraseña")
                    .padding()
            .foregroundColor(.white)
                .frame(width: 300, height:40).background(Color.gray)
            .cornerRadius(10)
            }
        NavigationLink(
            destination:Contrasena(),
        isActive: self.$isLoggedIn3,
        label: {
        EmptyView()
        })
            .padding()
            }
            
            )
        }
    }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
