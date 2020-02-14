//
//  WeeklySummaryHorizontalController.swift
//  WeatherAppLearningDay
//
//  Created by Ali Hassan on 14/02/2020.
//  Copyright © 2020 Ali Hassan. All rights reserved.
//

import UIKit

class WeeklySummaryHorizontalController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }

        collectionView.backgroundColor = .clear
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "weeklyCell")
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 14
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "weeklyCell", for: indexPath)
        cell.backgroundColor = UIColor.white.withAlphaComponent(0.3)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 110, height: 100)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }

    init() {
         super.init(collectionViewLayout: UICollectionViewFlowLayout())
     }

     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }

}
