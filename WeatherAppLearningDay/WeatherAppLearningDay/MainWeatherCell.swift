//
//  MainWeatherCell.swift
//  WeatherAppLearningDay
//
//  Created by Ali Hassan on 14/02/2020.
//  Copyright © 2020 Ali Hassan. All rights reserved.
//

import UIKit

class MainWeatherCell: UICollectionViewCell {

    let updatedLabel: UILabel! = {
        let lbl = UILabel()
        lbl.text = "10 minutes ago"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 16, weight: .light)
        return lbl
    }()

    let warningsLabel: UILabel! = {
        let lbl = UILabel()
        lbl.text = "Warnings issued"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 16, weight: .semibold)
        lbl.backgroundColor = .black
        lbl.textAlignment = .right
        return lbl
    }()

    let locationLabel: UILabel! = {
        let lbl = UILabel()
        lbl.text = "Shepards Bush"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 30, weight: .semibold)
        return lbl
    }()

    let locationSelectedButton: UIButton! = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        btn.constrainWidth(constant: 40)
        btn.constrainHeight(constant: 40)
        return btn
    }()

    let nextHourLabel: UILabel! = {
        let lbl = UILabel()
        lbl.text = "Next Hour"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 28, weight: .light)
        return lbl
    }()

    let sunriseLabel: UILabel! = {
        let lbl = UILabel()
        lbl.text = "07:18"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 16, weight: .semibold)
        return lbl
    }()

    let sunsetLabel: UILabel! = {
        let lbl = UILabel()
        lbl.text = "17:14"
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 16, weight: .light)
        return lbl
    }()


    let weeklySummaryController = WeeklySummaryHorizontalController()


    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .systemBlue

        weeklySummaryController.view.constrainHeight(constant: 100)
        addSubview(weeklySummaryController.view)
        weeklySummaryController.view.anchor(top: nil, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)

        let stackView1 = UIStackView(arrangedSubviews: [updatedLabel, warningsLabel])
        stackView1.alignment = .center
        stackView1.distribution = .equalSpacing
        stackView1.constrainHeight(constant: 30)

        let stackView2 = UIStackView(arrangedSubviews: [locationLabel, locationSelectedButton, UIView()])
        stackView2.alignment = .center
        stackView2.spacing = 16
        stackView2.constrainHeight(constant: 50)

        let stackView3 = UIStackView(arrangedSubviews: [nextHourLabel, UIStackView(arrangedSubviews: [sunriseLabel, sunsetLabel])])
        stackView3.constrainHeight(constant: 50)

        let verticalStackView = UIStackView(arrangedSubviews: [stackView1, stackView2, stackView3, UIView()])
        verticalStackView.axis = .vertical
        addSubview(verticalStackView)
        verticalStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: weeklySummaryController.view.topAnchor, trailing: trailingAnchor, padding: UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12))

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
