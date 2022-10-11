//
//  BannerTableViewCell.swift
//  AppStore
//
//  Created by Rishabh Sharma on 13/03/22.
//

import UIKit

class BannerTableViewCell: UITableViewCell {
    var imageArr = [UIImage(named: "image") ,UIImage(named: "image2") ,UIImage(named: "image3")]

    @IBOutlet weak var bannerCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        bannerCollectionView.delegate = self
        bannerCollectionView.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension BannerTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = bannerCollectionView.dequeueReusableCell(withReuseIdentifier: "BannerCollectionViewCell", for: indexPath) as! BannerCollectionViewCell
        cell.bannerImageView.image = imageArr[(indexPath.item)]
        return cell
    }
    
    
}
