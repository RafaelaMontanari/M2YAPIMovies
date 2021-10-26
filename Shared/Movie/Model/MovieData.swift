//
//  MovieModel.swift
//  M2YMovies (iOS)
//
//  Created by Rafaela Montanari on 24/10/21.
//

import Foundation

struct MovieData: Codable {
    let adult: Bool
    let backdropPath: String
    let genreIds:[Int]
    let id: Int
    let originalLanguage: String
    let originalTitle: String
    let overview: String
    let popularity: Float
    let posterPath: String
    let releaseDate: String
    let title: String
    let video: Bool
    let voteAverage: Float
    let voteCount: Int
}
