//
//  Menu.swift
//  proyecto
//
//  Created by Mauricio Alexander Contreras Escobar on 5/15/24.
//  Copyright © 2024 Mauricio Alexander Contreras Escobar. All rights reserved.
//

import SwiftUI

struct Menu: View {
    @State private var isLoggedIn: Bool = false
    @State private var isLoggedIn2: Bool = false
    @State private var isLoggedIn3: Bool = false
    @State private var isLoggedIn4: Bool = false
    var body: some View {
         NavigationView {
                  VStack {
        Text("Bienvenido")
                    Image("casa")
                    .resizable()
                    .frame(width: 100, height:100)
                Rectangle()
                    .frame(width: 300, height: 450)
                    .foregroundColor(.blue)
                    .cornerRadius(75)
                    .overlay(
                        VStack {
    Button(action: {
        self.isLoggedIn = true  }){Text("Materias inscritas")
            .foregroundColor(.white)
        .frame(width: 290, height: 40)    .background(Color.gray)
        .padding()
            .cornerRadius(10)
    }
        NavigationLink(
        destination: materias(),
        isActive: self.$isLoggedIn,
        label: {
        EmptyView()
        })
        Button(action: {
            self.isLoggedIn2 = true         }){Text("Inscribir materias")
                   .padding()
                   .foregroundColor(.white)
            .frame(width: 290, height: 40)           .background(Color.gray)
                   .cornerRadius(10)
                            }
               NavigationLink(
               destination: Inscripcion(),
               isActive: self.$isLoggedIn2,
               label: {
               EmptyView()
               })
             Button(action: {
                       self.isLoggedIn3 = true         }){Text("Perfil")
                              .foregroundColor(.white)
                .frame(width: 290, height: 40)                 .background(Color.gray)
                .padding()
                              .cornerRadius(10)
                                       }
                          NavigationLink(
                          destination: Perfil(),
                          isActive: self.$isLoggedIn3,
                          label: {
                          EmptyView()
                          })
                            Button(action: {
                self.isLoggedIn4 = true         }){Text("Salir")
                    .padding()
            .foregroundColor(.white)
                .frame(width: 290, height: 40)
           .background(Color.gray)
                .cornerRadius(10)
                        }
                NavigationLink(
            destination: ContentView(),
                    isActive: self.$isLoggedIn4,
                        label: {
                    EmptyView()
                            }
                            )}
        )}
    }
    }
}
struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
