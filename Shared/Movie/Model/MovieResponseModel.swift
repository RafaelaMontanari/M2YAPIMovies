//
//  MovieResponseModel.swift
//  M2YMovies (iOS)
//
//  Created by Rafaela Montanari on 24/10/21.
//

import Foundation

struct MovieResponseModel: Codable {
    let page: Int
    let results: MovieData
    let totalPages: Int
    let totalResults: Int
}
