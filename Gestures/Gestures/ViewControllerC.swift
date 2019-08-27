//
//  viewControllerC.swift
//  Gestures
//
//  Created by Macosx on 18/6/19.
//  Copyright © 2019 UJA. All rights reserved.
//

import UIKit
class ViewControllerC: UIViewController {
    
    @IBOutlet weak var colltionView: UICollectionView!
    var imgArr = [UIImage(named: "image1"),
                  UIImage(named: "image2"),
                  UIImage(named: "image3"),
                  UIImage(named: "image3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

extension ViewControllerC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return imgArr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DataCollectionViewCell
        print(indexPath.row)
        if indexPath.row == 3{
            performSegue(withIdentifier: "segue6", sender: self)
        }
        cell?.img.image = imgArr[indexPath.row]
        return cell!
    }
}

extension ViewControllerC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let size = colltionView.frame.size
        return CGSize(width: size.width, height: size.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionLayout: UICollectionViewLayout, minimumInteritemSpacecingForSectionAt section: Int) -> CGFloat{
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionLayout: UICollectionViewLayout, minimumLineSpacecingForSectionAt section: Int) -> CGFloat{
        return 0
    }
}
