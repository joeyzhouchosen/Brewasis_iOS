//
//  LoginGuideCell.swift
//  Brewasis_App
//
//  Created by Yanbin Zhou on 7/2/19.
//  Copyright © 2019 Yanbin Zhou. All rights reserved.
//

import UIKit

class LoginGuideCell: UICollectionViewCell{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    var loginPage: LoginGuidePage? {
        didSet {
            mainImageView.image = UIImage(named: loginPage!.imageName)
            backgroundColor = loginPage?.color
            titleBox.text = loginPage?.title
            messageBox.text = loginPage?.message
        }
    }
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
        
    let seperatorLine: UIView = {
        let sp = UIView()
        sp.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        sp.translatesAutoresizingMaskIntoConstraints = false
        return sp
    }()
    
    let titleBox: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        title.font = UIFont(name: "OpenSans", size: 35)
        title.textAlignment = .center
        return title
    }()
    
    
    let messageBox: UILabel = {
        let message = UILabel()
        message.translatesAutoresizingMaskIntoConstraints = false
        message.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        message.font = UIFont(name: "OpenSans", size: 20)
        message.textAlignment = .center
        message.numberOfLines = 6
        
        return message
    }()
    
    func setupViews() {
        addSubview(mainImageView)
        mainImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainImageView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -150).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        mainImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        addSubview(titleBox)
        titleBox.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 0).isActive = true
        titleBox.centerXAnchor.constraint(lessThanOrEqualTo: centerXAnchor).isActive = true
        titleBox.heightAnchor.constraint(equalToConstant: 100).isActive = true
        titleBox.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        addSubview(seperatorLine)
        seperatorLine.topAnchor.constraint(equalTo: titleBox.bottomAnchor, constant: -20).isActive = true
        seperatorLine.centerXAnchor.constraint(lessThanOrEqualTo: centerXAnchor).isActive = true
        seperatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        seperatorLine.leftAnchor.constraint(equalTo: leftAnchor, constant: 100).isActive = true
        seperatorLine.rightAnchor.constraint(equalTo: rightAnchor, constant: -100).isActive = true
     
        addSubview(messageBox)
        messageBox.topAnchor.constraint(equalTo: seperatorLine.bottomAnchor, constant: 20).isActive = true
        messageBox.centerXAnchor.constraint(lessThanOrEqualTo: centerXAnchor).isActive = true
        messageBox.heightAnchor.constraint(lessThanOrEqualToConstant: 500).isActive = true
        messageBox.widthAnchor.constraint(lessThanOrEqualToConstant: 300).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
