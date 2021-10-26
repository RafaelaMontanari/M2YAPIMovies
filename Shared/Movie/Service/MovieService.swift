//
//  MovieService.swift
//  M2YMovies (iOS)
//
//  Created by Rafaela Montanari on 25/10/21.
//

import Foundation
import Alamofire

class MovieService {
    
    private let baseUrl = "https://api.themoviedb.org/3/"
    private let searchUrl = "search/movie?api_key="
    private let apiKey = "f3b6c2251160b393a69ca0c6ac9c9631"
    private let filmeUrl = "&query=labirinto+fauno"
    
    func fetchMovie () {
        
        let url = baseUrl+searchUrl+apiKey+filmeUrl
        
        AF.request(url).responseJSON { (response) in
            switch response.result {
            case .failure(let error):
                print(error)
                
            case .success(let value):
               print(value)
            }
        }
    }
}


