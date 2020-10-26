//
//  ImageView.swift
//  Movies
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 26/10/20.
//

import UIKit
//import SDWebImage

protocol ImageViewProperties {
    
    var url: String { get set }
    var clipToBounds: Bool { get }
    var contentMode: UIView.ContentMode { get }
}

struct MovieImageView: ImageViewProperties {
    
    var url: String
    var clipToBounds: Bool = true
    var contentMode: UIView.ContentMode = .scaleAspectFill
    
    init(url: String) {
        self.url = url
    }
}

class ImageView: UIImageView {

    var type: ImageViewProperties? {
        didSet {
            guard let type = type else { return }
            clipsToBounds = type.clipToBounds
            contentMode = type.contentMode
//            sd_setImage(with: URL(string: type.url),
//                        placeholderImage: UIImage(named: "placeholder"))
        }
    }
}
