//
//  MovieSection.swift
//  Filmx
//
//  Created by Oleksandr Kurinnyi on 16/04/2022.
//

import Foundation

struct MovieSection: Identifiable {
    let id = UUID()
    
    let movies: [Movie]
    let endpoint: MovieListEndpoint
    var title: String {
        endpoint.description
    }
    
    var thumbnailType: MovieThumbnailType {
        endpoint.thumbnailType
    }
}

fileprivate extension MovieListEndpoint {
    var thumbnailType: MovieThumbnailType {
        switch self {
        case .nowPlaying:
            return .poster()
        default:
            return .backdrop
        }
    }
}
