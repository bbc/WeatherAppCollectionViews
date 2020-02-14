////
////  MainWeatherCell.swift
////  WeatherAppLearningDay
////
////  Created by Ali Hassan on 14/02/2020.
////  Copyright © 2020 Ali Hassan. All rights reserved.
////
//
//import UIKit
//
//class TopDetailsCell: UICollectionViewCell {
//
//    let updatedLabel: UILabel! = {
//        let lbl = UILabel()
//        lbl.text = "10 minutes ago"
//        lbl.textColor = .white
//        lbl.font = .systemFont(ofSize: 16, weight: .light)
//        return lbl
//    }()
//
//    let warningsLabel: UILabel! = {
//        let lbl = UILabel()
//        lbl.text = "Warnings issued"
//        lbl.textColor = .white
//        lbl.font = .systemFont(ofSize: 16, weight: .semibold)
//        lbl.backgroundColor = .black
//        return lbl
//    }()
//
//    let locationLabel: UILabel! = {
//        let lbl = UILabel()
//        lbl.text = "QWERTY Bush"
//        lbl.textColor = .white
//        lbl.font = .systemFont(ofSize: 40, weight: .bold)
//        return lbl
//    }()
//
//    let locationSelectedButton: UIButton! = {
//        let btn = UIButton()
//        btn.backgroundColor = UIColor.black.withAlphaComponent(0.5)
//        return btn
//    }()
//
//    let nextHourLabel: UILabel! = {
//        let lbl = UILabel()
//        lbl.text = "Next Hour"
//        lbl.textColor = .white
//        lbl.font = .systemFont(ofSize: 28, weight: .light)
//        return lbl
//    }()
//
//    let sunriseLabel: UILabel! = {
//        let lbl = UILabel()
//        lbl.text = "07:18"
//        lbl.textColor = .white
//        lbl.font = .systemFont(ofSize: 16, weight: .medium)
//        return lbl
//    }()
//
//    let sunsetLabel: UILabel! = {
//        let lbl = UILabel()
//        lbl.text = "17:14"
//        lbl.textColor = .white
//        lbl.font = .systemFont(ofSize: 16, weight: .light)
//        return lbl
//    }()
//
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        backgroundColor = .systemBlue
//
//        let stackView1 = UIStackView(arrangedSubviews: [updatedLabel, warningsLabel])
//        stackView1.constrainHeight(constant: 25)
//
//        let stacView2 = UIStackView(arrangedSubviews: [locationLabel, locationSelectedButton])
//        stacView2.constrainHeight(constant: 40)
//
//        let stackView3 = UIStackView(arrangedSubviews: [nextHourLabel, UIStackView(arrangedSubviews: [sunriseLabel, sunsetLabel])])
//        stackView3.constrainHeight(constant: 40)
//
//        let verticalStackView = UIStackView(arrangedSubviews: [stackView1, stacView2, stackView3])
//        verticalStackView.axis = .vertical
//        verticalStackView.distribution = .equalCentering
//        addSubview(verticalStackView)
//        verticalStackView.fillSuperview(padding: UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12))
//
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//}
