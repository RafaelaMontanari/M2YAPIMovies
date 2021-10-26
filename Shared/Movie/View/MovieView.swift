//
//  MovieView.swift
//  M2YMovies (iOS)
//
//  Created by Rafaela Montanari on 24/10/21.
//

import SwiftUI

struct MovieView: View {
    
    @StateObject private var vm = MovieViewModel()
    
    var body: some View {
        ScrollView {
            Image("imgFauno")
                .resizable()
                .scaledToFill()
            HStack(spacing: 0) {
                Group {
                    Text("2020 * ").padding(.leading, 8)
                    Text("103 min")
                }.foregroundColor(.white).font(.system(size: 14, weight: .light, design: .serif)).padding(.top, 8)
            }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).background(Color.black)
            VStack(spacing: 0) {
                Text("Labirinto do Fauno").bold().foregroundColor(.white).font(.system(size: 24, weight: .light, design: .serif)).padding(.leading, 8)
            }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading).background(Color.black)
            HStack {
                Button(action: {
                    print("Play tapped!")
                }) {
                    HStack {
                        Image(systemName: "play")
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.black)
                }
                Button(action: {
                    print("Add tapped!")
                }) {
                    HStack {
                        Image(systemName: "plus")
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                }
                Button(action: {
                    print("Favorite tapped!")
                }) {
                    HStack {
                        Image(systemName: "heart")
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .background(Color.black)
                }
                
            }.frame(minWidth: 0, maxWidth: .infinity).background(Color.black)
            VStack(alignment: .leading) {
                Text("Testando aduahsduhuda uhadhuashud audhusauhda uah huas").foregroundColor(.white)
                Text("Testando")
                Text("Testando")
                Text("Testando")
                Text("Testando")
                
            }
            VStack {
                Text("Testando")
                Text("Testando")
                Text("Testando")
                Text("Testando")
                Text("Testando")
                
            }
        }.background(Color.black)
            .edgesIgnoringSafeArea(.all)
            .onAppear(perform: {
                self.vm.getMovies()
            })
    }
        
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
