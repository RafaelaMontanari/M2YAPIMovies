//
//  MovieViewModel.swift
//  M2YMovies (iOS)
//
//  Created by Rafaela Montanari on 25/10/21.
//

import Foundation

class MovieViewModel : ObservableObject {
    
    private var service = MovieService()
    
    @Published var movies: [MovieData] = []
    
    init() {
        getMovies()
    }
    
    func getMovies() {
        self.service.fetchMovie()
    }
}
