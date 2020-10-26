//
//  CatalogViewController.swift
//  Movies
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 26/10/20.
//

import UIKit

class CatalogViewController: UIViewController {
    
    private lazy var collectionViewLayout: UICollectionViewFlowLayout = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.scrollDirection = .vertical
        collectionViewLayout.minimumLineSpacing = kCellPadding
        collectionViewLayout.minimumInteritemSpacing = kCellPadding
        collectionViewLayout.sectionInset = UIEdgeInsets(top: kCellPaddingToBorders,
                                                         left: kCellPaddingToBorders,
                                                         bottom: kCellPaddingToBorders,
                                                         right: kCellPaddingToBorders)
        let viewWidth = self.view.bounds.size.width
        let photoSize: CGFloat = (viewWidth - (2 * kCellPaddingToBorders) - (kNumberOfCellsPerRow - 1) * kCellPadding) / kNumberOfCellsPerRow
        collectionViewLayout.itemSize = CGSize(width: photoSize, height: photoSize + kPosterAdditionalHeight)
        return collectionViewLayout
    }()
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame:.zero, collectionViewLayout: collectionViewLayout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor = .white
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(MovieCollectionViewCell.self, forCellWithReuseIdentifier: kMovieCollectionCellIdentifier)
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setupCollectionViewLayout()
    }
    
    // MARK: - Setup methods
    
    func setupCollectionViewLayout() {
        view.addSubviews(collectionView)
        collectionView.fillSuperview()
    }
}

extension CatalogViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kMovieCollectionCellIdentifier, for: indexPath) as? MovieCollectionViewCell {
            cell.backgroundColor = .red
//            cell.bindData(imageURL: "")
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
}
