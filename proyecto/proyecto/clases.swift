//
//  clases.swift
//  proyecto
//
//  Created by Mauricio Alexander Contreras Escobar on 5/15/24.
//  Copyright © 2024 Mauricio Alexander Contreras Escobar. All rights reserved.
//

import SwiftUI

struct clases: View {
@State private var isLoggedIn: Bool = false
@State private var isLoggedIn2: Bool = false
@State private var isLoggedIn3: Bool = false
@State private var isLoggedIn4: Bool = false
    let materia1:String
    var body: some View {
         NavigationView {
                  VStack {
                    Text(materia1)
                    Image("usuario")
                    .resizable()
                    .frame(width: 100, height:100)
                Rectangle()
                    .frame(width: 300, height: 450)
                    .foregroundColor(.blue)
                    .cornerRadius(75)
                    .overlay(
                        VStack {
    Button(action: {
        self.isLoggedIn = true  }){Text("Clases")
            .foregroundColor(.white)
        .frame(width: 290, height: 40)      .background(Color.gray)
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
            self.isLoggedIn2 = true         }){Text("Temas")
                   .padding()
                   .foregroundColor(.white)
            .frame(width: 290, height: 40)      .background(Color.gray)
            .padding()
                   .cornerRadius(10)
                            }
               NavigationLink(
               destination: Inscripcion(),
               isActive: self.$isLoggedIn2,
               label: {
               EmptyView()
               })
             Button(action: {
                       self.isLoggedIn3 = true         }){Text("Listados de tareas")
                              .padding()
                              .foregroundColor(.white)
                .frame(width: 290, height: 40)                        .background(Color.gray)
                .padding()
                              .cornerRadius(10)
                                       }
                          NavigationLink(
                          destination: materias(),
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
                .padding()
                .cornerRadius(10)
                        }
                NavigationLink(
            destination: materias(),
                    isActive: self.$isLoggedIn4,
                        label: {
                    EmptyView()
                            }
                            )}
        )}
    }
    }
}
struct clases_Previews: PreviewProvider {
    static var previews: some View {
        clases(materia1: "")
    }
}
