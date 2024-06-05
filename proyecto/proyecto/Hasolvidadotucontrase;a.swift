//
//  Hasolvidadotucontrase;a.swift
//  proyecto
//
//  Created by Mauricio Alexander Contreras Escobar on 5/15/24.
//  Copyright © 2024 Mauricio Alexander Contreras Escobar. All rights reserved.
//

import SwiftUI

struct Hasolvidadotucontrase_a: View {
    @State private var correo: String = ""
    @State private var clave: String = ""
    @State private var isLoggedIn: Bool = false
    var body: some View {
         NavigationView {
                  VStack {
                    Text("Has olvidado tu contraseña")
                    Image("restablecerlacontrasena")
                    .resizable()
                    .frame(width: 100, height:100)
                Rectangle()
                    .frame(width: 360, height: 400)
                    .foregroundColor(.blue)
                    .overlay(
                        VStack {
                            TextField("Correo", text: $correo)
   .textFieldStyle(RoundedBorderTextFieldStyle())
                       padding()                .foregroundColor(.white)
                               
                            TextField("Contraseña", text: $clave)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                padding()    .foregroundColor(.white)
                
    Button(action: {
        
  }){Text("Actualizar")
            .padding()
            .foregroundColor(.white)
    .background(Color.gray)
            .cornerRadius(10)
    }
        NavigationLink(
        destination: ContentView(),
        isActive: self.$isLoggedIn,
        label: {
        EmptyView()
        })
        Button(action: {
         }){Text("Salir")
                   .padding()
                   .foregroundColor(.white)
           .background(Color.gray)
                   .cornerRadius(10)
                            }
               NavigationLink(
               destination: ContentView(),
               isActive: self.$isLoggedIn,
               label: {
               EmptyView()
               })
            }
            )
        }
    }
    }
}
struct Hasolvidadotucontrase_a_Previews: PreviewProvider {
    static var previews: some View {
        Hasolvidadotucontrase_a()
    }
}
