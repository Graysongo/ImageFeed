//
//  ImagesListCell.swift
//  ImageFeed
//
//  Created by dmitry.chicherin on 27.11.2024.
//

import UIKit

final class ImagesListCell: UITableViewCell {
    // MARK: - Properties
    static let reuseIdentifier = "ImagesListCell"
    
    // MARK: - Private Outlets
    @IBOutlet private weak var cellImage: UIImageView!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var likeButton: UIButton!
    
    // MARK: - Configuration Method
    func configure(image: UIImage?, dateText: String, isLiked: Bool) {
        cellImage.image = image
        dateLabel.text = dateText
        
        let likeImage = isLiked ? UIImage(named: "LikeButtonOn") : UIImage(named: "LikeButtonOff")
        likeButton.setImage(likeImage, for: .normal)
    }
}
