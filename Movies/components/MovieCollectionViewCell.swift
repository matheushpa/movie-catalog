//
//  CollectionViewCell.swift
//  Movies
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 26/10/20.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    private lazy var photoImageView: ImageView = {
        let imageView = ImageView()
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupPhotoImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup methods
    
    func setupPhotoImageView() {
        self.addSubview(photoImageView)
//        photoImageView.fillSuperview()
    }
    
    func bindData(imageURL: String) {
//        photoImageView.type = GalleryImageView(url: imageURL)
    }
}
